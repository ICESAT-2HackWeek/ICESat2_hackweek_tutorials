import numpy as np
from datetime import datetime as dt
import time

CDR = 180. / np.pi
E2 = 6.694379852*1e-3
E = np.sqrt(E2)
EARTH_RADIUS_KM = RE = 6378.1370
EARTH_RADIUS_M = 6378137.0

def date2fracyr(dates):
    fracyr = np.empty_like(dates)
    i = 0
    for date in dates:
        def sinceEpoch(date): # returns seconds since epoch
            return time.mktime(date.timetuple())
        s = sinceEpoch

        year = date.year
        startOfThisYear = dt(year=year, month=1, day=1)
        startOfNextYear = dt(year=year+1, month=1, day=1)

        yearElapsed = s(date) - s(startOfThisYear)
        yearDuration = s(startOfNextYear) - s(startOfThisYear)
        fraction = yearElapsed/yearDuration
        fracyr[i] = date.year + fraction
        i+=1
    return fracyr

def ll2ps(lon, lat, slat=71, slon=0, hemi='s', units='km'):
    """ Spherical lon/lat -> Polar Steregraphic x/y.

    This function converts from geodetic latitude and longitude to
    polar stereographic 'x/y' coordinates for the polar regions. The
    equations are from Snyder, J.P., 1982, Map Projections Used by
    the U.S. Geological Survey, Geological Survey Bulletin 1532, U.S.
    Government Printing Office. See JPL Technical Memorandum
    3349-85-101 for further details.

    Parameters
    ----------
    lon, lat : array-like (1d or 2d) or float
        Geodetic longitude and latitude (degrees, -/+180 or 0/360 and -/+90).
    slat : float
        Standard latitude (e.g., 70 S), see Notes.
    slon : float
      Standard longitude (e.g., 0), see Notes.
    hemi : string
        Hemisphere: 'n' or 's' (not case-sensitive).
    units : string
        Polar Stereographic x/y units: 'm' or 'km' (not case-sensitive).

    Returns
    -------
    x, y : ndarray (1d or 2d) or float
        Polar stereographic x and y coordinates (in 'm' or 'km').
    Notes
    -----
    SLAT is is the "true" latitude in the plane projection
    (the map), so there is no deformation over this latitude;
    e.g., using the same SLON but changing SLAT from 70 to 71
    degrees, will move things in polar stereo. The goal is to
    locally preserve area and angles. Most users use 71S but
    the sea ice people use 70S.

    SLON provides a "vertical" coordinate for plotting and for
    rectangle orientation. E.g., for Arctic sea ice, NSIDC use
    SLON=45 in order to make a grid that is optimized for where
    sea ice occurs. Ex: CATS2008a has SLON=-70 (AP roughly up),
    so that the grid can be long enough to include South Georgia.
    Other examples are:
    MOA Image Map (the GeoTIFF): SLAT=-71, SLON=0
    MOA mask grid (from Laurie): SLAT=-71, SLON=-70
    Scripps mask grid (from GeoTIFF): SLAT=-71, SLON=0
    History
    -------
    Written in Fortran by C.S. Morris - Apr 29, 1985
    Revised by C.S. Morris - Dec 11, 1985
    Revised by V.J. Troisi - Jan 1990
        SGN - provides hemisphere dependency (+/- 1)
    Revised by Xiaoming Li - Oct 1996
        Corrected equation for RHO
    Converted to Matlab by L. Padman - Oct 25, 2006
    Updated for slon by L. Padman - Nov 21, 2006
    Converted to Python by F.S. Paolo - Mar 23, 2010

    Example
    -------
    >>> lon = [-150.3, 66.2, 5.3]
    >>> lat = [70.2, 75.5, 80.3]
    >>> x, y = ll2ps(lon, lat, slat=71, slon=-70, hemi='s', units='m')
    Original (Matlab) documentation
    -------------------------------
    ARGUMENTS:

    Variable     I/O    Description

    lat           I     Geodetic Latitude (degrees, +90 to -90)
    lon           I     Geodetic Longitude (degrees, 0 to 360)
    SLAT          I     Standard latitude (typ. 71, or 70)
    SLON          I
    HEMI          I     Hemisphere (char*1: 'N' or 'S' (not
                                    case-sensitive)
    x             O     Polar Stereographic X Coordinate (km)
    y             O     Polar Stereographic Y Coordinate (km)
    """
    if units != 'm':
        units = 'km'

    # print("converting lon/lat -> x/y ...")

    # if sequence, convert to ndarray double
    if type(lon).__name__ in ['list', 'tuple']:
        lon = np.array(lon, 'f8')
        lat = np.array(lat, 'f8')

    # if ndarray, convert to double if it isn't
    if type(lon).__name__ == 'ndarray' and lon.dtype != 'float64':
        lon = lon.astype(np.float64)
        lat = lat.astype(np.float64)

    # convert longitude
    if type(lon).__name__ == 'ndarray':  # is numpy array
        lon[lon<0] += 360.               # -/+180 -> 0/360
    elif lon.any() < 0:                        # is scalar
        lon += 360.

    if (str.lower(hemi) == 's'):
        SGN = -1
    else:
        SGN = 1
    if (np.abs(slat) == 90):
        RHO = 2. * RE / ((1 + E)**(1 + E) * (1 - E)**(1 - E))**(E/2.)
    else:
        SL  = np.abs(slat) / CDR
        TC  = np.tan(np.pi/4. - SL/2.) / ((1 - E * np.sin(SL)) \
            / (1 + E * np.sin(SL)))**(E/2.)
        MC  = np.cos(SL) / np.sqrt(1 - E2 * (np.sin(SL)**2))
        RHO = RE * MC / TC

    lat = np.abs(lat) / CDR
    T = np.tan(np.pi/4. - lat/2.) / ((1 - E * np.sin(lat)) \
      / (1 + E * np.sin(lat)))**(E/2.)

    lon2 = -(lon - slon) / CDR
    x = -RHO * T * np.sin(lon2)  # global vars
    y =  RHO * T * np.cos(lon2)

    if units == 'm':            # computations are done in km
        x *= 1e3
        y *= 1e3

    return [x, y]


def ps2ll(x, y, slat=71, slon=0, hemi='s', units='km'):
    """Polar Stereographic x/y -> Spherical lon/lat.

    This subroutine converts from Polar Stereographic 'x,y' coordinates
    to geodetic longitude and latitude for the polar regions. The
    equations are from Snyder, J.P., 1982, Map Projections Used by the
    U.S. Geological Survey, Geological Survey Bulletin 1532, U.S.
    Government Printing Office. See JPL Technical Memorandum
    3349-85-101 for further details.

    Parameters
    ----------
    x, y : array-like (1d or 2d) or float
        Polar stereographic x and y coordinates (in 'm' or 'km').
    slat : float
        Standard latitude (e.g., 70 S), see Notes.
    slon : float
        Standard longitude (e.g., 0), see Notes.
    hemi : string
        Hemisphere: 'n' or 's' (not case-sensitive).
    units : string
        Polar Stereographic x/y units: 'm' or 'km' (not case-sensitive).

    Returns
    -------
    lon, lat : ndarray (1d or 2d) or float
        Geodetic longitude and latitude (degrees, 0/360 and -/+90).

    Notes
    -----
    SLAT is the "true" latitude in the plane projection
    (the map), so there is no deformation over this latitude;
    e.g., using the same SLON but changing SLAT from 70 to 71
    degrees, will move things in polar stereo. The goal is to
    locally preserve area and angles. Most users use 71S but
    the sea ice people use 70S.

    SLON provides a "vertical" coordinate for plotting and for
    rectangle orientation. E.g., for Arctic sea ice, NSIDC use
    SLON=45 in order to make a grid that is optimized for where
    sea ice occurs. CATS2008a has SLON=-70 (AP roughly up), so
    that the grid can be long enough to include South Georgia.
    MOA Image Map (the GeoTIFF): SLAT=-71, SLON=0
    MOA mask grid (from Laurie): SLAT=-71, SLON=-70
    Scripps mask grid (from GeoTIFF): SLAT=-71, SLON=0
    History
    -------
    Written in Fortran by C.S. Morris - Apr 29, 1985
    Revised by C.S. Morris - Dec 11, 1985
    Revised by V.J. Troisi - Jan 1990
        SGN - provides hemisphere dependency (+/- 1)
    Converted to Matlab by L. Padman - Oct 25, 2006
    Updated for slon by L. Padman - Nov 21, 2006
    Converted to Python by F.S. Paolo - Mar 23, 2010
    Edited Susheel for is2py Sep 09, 2018

    Example
    -------
    >>> x = [-2141.06767831  1096.06628549  1021.77465469]
    >>> y = [  365.97940112 -1142.96735458   268.05756254]
    >>> lon, lat = xy2ll(x, y, slat=71, slon=-70, hemi='s', units='km')
    Original (Matlab) documentation
    -------------------------------
    ARGUMENTS:

    Variable     I/O    Description

    X             I     Polar Stereographic X Coordinate (km)
    Y             I     Polar Stereographic Y Coordinate (km)
    SLAT          I     Standard latitude (typ. 71, or 70)
    SLON          I     Standard longitude
    HEMI          I     Hemisphere (char*1, 'S' or 'N',
                                    not case-sensitive)
    lat           O     Geodetic Latitude (degrees, +90 to -90)
    lon           O     Geodetic Longitude (degrees, 0 to 360)
    """
    if units != 'm':
        units = 'km'

    # print("converting 'x,y' -> 'lon,lat' ...")

    # if sequence, convert to ndarray
    if type(x).__name__ in ['list', 'tuple']:
        x = np.array(x, 'f8')
        y = np.array(y, 'f8')

    # if ndarray, convert to double if it isn't
    if type(x).__name__ == 'ndarray' and x.dtype != 'float64':
        x = x.astype(np.float64)
        y = y.astype(np.float64)

    if units == 'm':      # computations are done in km !!!
        x *= 1e-3
        y *= 1e-3

    if(str.lower(hemi) == 's'):
        SGN = -1.
    else:
        SGN = 1.
    slat = np.abs(slat)
    SL = slat / CDR
    RHO = np.sqrt(x**2 + y**2)    # if scalar, is numpy.float64
    if np.alltrue(RHO < 0.1):     # Don't calculate if "all points" on the equator
        lat = 90.0 * SGN
        lon = 0.0
        return lon, lat
    else:
        CM = np.cos(SL) / np.sqrt(1 - E2 * (np.sin(SL)**2))
        T = np.tan((np.pi/4.) - (SL/2.)) / ((1 - E * np.sin(SL)) \
            / (1 + E * np.sin(SL)))**(E/2.)
        if (np.abs(slat - 90.) < 1.e-5):
            T = ((RHO * np.sqrt((1 + E)**(1 + E) * (1 - E)**(1 - E))) / 2.) / RE
        else:
            T = RHO * T / (RE * CM)

        a1 =  5 * E2**2 / 24.
        a2 =  1 * E2**3 / 12.
        a3 =  7 * E2**2 / 48.
        a4 = 29 * E2**3 / 240.
        a5 =  7 * E2**3 / 120.

        CHI = (np.pi/2.) - 2. * np.arctan(T)
        lat = CHI + ((E2/2.) + a1 + a2) * np.sin(2. * CHI) \
              + (a3 + a4) * np.sin(4. * CHI) + a5 * np.sin(6. * CHI)
        lat = SGN * lat * CDR
        lon = -(np.arctan2(-x, y) * CDR) + slon

    return [lon, lat]
