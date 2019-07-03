# ICESAT-2HackWeek-seaice
### Alek Petty, June 2018   
ICESat-2 hackweek repository for the sea ice tutorials. Primarily hosts the Jupyter notebooks which contain the individual tutorials, but also a few extra code snippets (see utils.py and readers.py) that may be of use for the hackathon.   

![icesat2_seaice](./Images/icesat2_seaice.png?raw=true "ICESat-2 profiling the sea ice surface, taken from the ICESat-2 website (Satellite image courtesy of Orbital
Earth image illustrating AMSR-E sea ice courtesy of the NASA Scientific Visualization Studio)")

## Setup

This GitHub repository primarily hosts the Jupyter Notebooks needed for the hackweek tutorials. The notebooks should work without any extra steps if you're working in the ICESat-2 Pangeo environment that has been created for this hackweek. Just clone this repository into your Pangeo user account (git clone https://github.com/akpetty/ICESat2_hackweek_tutorials/07_SeaIce_Petty when logged in). To run the notebooks on your local machine instead, a conda environment file (is2seaiceenv_environment.yml) has been provided in this repo for you to generate a Python environment that includes all the revelant libraries you might need:
```
conda env create -f is2seaiceenv_environment.yml
```

If this doesn't work you can try generating your own Python 3.7 conda environment that includes the packages we need (sometimes there are issues getting environment files like this working across mac/pc/linux platforms):
```
conda create -n is2env python=3.7 basemap xarray pandas netcdf4 pyproj scipy matplotlib h5py seaborn cartopy
```

The hackweek includes extra tutorials on conda (and miniconda) so see those resources for more information. 

The example data files are being stored on a Pangeo Amazon S3 data server. The notebooks incuded here provide a call you can run to quickly download these files to your Data directory. A gitignore file is included to ignore these hdf5 (.h5) files if you decide to fork this repo and push any local changes. 

If you want to do this outside of the notebooks you can run the following commands from the terminal to get the data you need:
```
cp Data
aws s3 cp s3://pangeo-data-upload-oregon/icesat2/ATL07-01_20181115003141_07240101_001_01.h5 .
aws s3 cp s3://pangeo-data-upload-oregon/icesat2/ATL03_20181115022655_07250104_001_01.h5 .
```
and examples of how to upload  data  to S3:

```
aws s3 cp ATL03_20181115022655_07250104_001_01.h5 s3://pangeo-data-upload-oregon/icesat2/
aws s3 cp ATL07-01_20181115003141_07240101_001_01.h5 s3://pangeo-data-upload-oregon/icesat2/
```

Good luck!

## Notebooks

1. ATL03.ipynb
* General understanding of the data included in a typical ATL03 file.
* Reading in, plotting and basic analysis of ATL03 data.
* What we can learn from ATL03 to derive the ATL07 surface height segments!

2. ATL07.ipynb
* General understanding of the data included in a typical ATL07 file.
* Reading in, plotting and basic analysis of ATL07 data.
* How is ATL07 data used to generate ATL10 sea ice freeboards and what to look out for when using either product.

3. ATL10.ipynb
* General understanding of the data included in a typical ATL10 file.
* Reading in, plotting and basic analysis of ATL10 data.
* How to use ATL10 freebaords to produce sea ice thickness estimates.
* Examples of derived sea ice thicknesses.

4. Hacking.ipynb (TBD)
* Some extra example sof using ATL10 and NESOSIM snow data to derive thickness.
* Gridding/projecting data using Cartopy
* Provide some scripts to batch analyze ATL07 or ATL10 data to do some roughness/topography calculations?


## Background

NASA's ICESat-2 launched succesfully in September 2018 from Vadenberg Airforce Base, California. ICESat-2 carries onboard a single instrument – the Advanced Topographic Laser Altimeter System (ATLAS). ATLAS measures the travel times of laser pulses to derive the distance between the spacecraft and Earth’s surface and thus an estiamte of the Earth's surface elevation with respect to a reference surface. The orbit pattern results in a higher density of shots within the polar regions. One of ICESat-2's primary mission objectives is to: *Estimate sea-ice thickness to examine ice/ocean/atmosphere exchanges of energy, mass and moisture.*

![icesat2_profiling](./Images/icesat2_profiling.png?raw=true "ICESat-2 profiling the sea ice surface, figure taken from the ATL07/10 ATBD document")

ICESat-2 employs a photon-counting system to obtain high measurement sensitivity with lower resource (power) demands on the satellite platform compared to the analog waveform approach of the ICESat laser altimeter GLAS. The ATLAS instrument transmits laser pulses at 532 nm with a high pulse repetition frequency of 10 kHz. The ICESat-2 nominal orbit altitude of ~500 km results in laser footprints of ~17 m on the ground, which are separated by only ~0.7 m along-track (resulting in substantial overlap between the shots). This relatively small footprint size combined with the high pulse repetition frequency and  precise time of flight estimates were partly chosen to enable the measurements of sea surface height within leads to carry a precision of 3 cm or less. 

The laser is split into 6 beams (three pairs of strong and weak beams) which provide individual profiles of elevation. The multiple beams address the need for unambiguous separation of ice sheet slope from height changes. For sea ice, this provides multiple profiles of sea ice and sea surface heights, increasing overall profiling coverage and enabling assessments of beam reliability. 

The beam configuration and their separation are shown above: the beams within each pair have different transmit energies (‘weak’ and‘strong’, with an energy ratio between them of approximately 1:4) and are separated by 90 m in the across-track direction. The beam pairs are separated by ~3.3 km in the across-track direction, and the strong and weak beams are separated by ~2.5 km in the along-track direction. The observatory orientation is an important consideration, as this changes the labelling of the beams - i.e. 'gt1r' refers to the left-side strong beam when in the forward direction (beam 5) but the left-side weak beam when in the backward direction (beam 2). 

The ICESat-2 products of most interest to the sea ice community are:

* ATL03: Along-track photon heights (1. ATL03.ipynb tutorial) 
* ATL07: Along-track segment surace heights (2. ATL07.ipynb tutorial) 
* ATL09: Cloud products (no direct tutorial provided, used mainly in ATL07 production for cloud filtering)
* ATL10: Along-track segment (and 10 km swath) freeboards (3. ATL10.ipynb tutorial) 
* ATL20: Gridded freeboard (notebook tbd)
* Unofficial along-track and gridded sea ice thickness products through NASA GSFC (notebook tbd)

We provide in the notebooks a brief summary of these data products, but encourage the user to read the ATBD or references provided above and at the start of the Jupyter Notebooks for the more complete (and probably accurate) descriptions.

The ICESat-2 data products are provided in the Hierarchical Data Format – version 5 (HDF-5) format and have recently been made publicly available through the National Snow and Ice Data Center (NSIDC - https://nsidc.org/data/icesat-2). See the hdf5 tutorial (https://github.com/ICESAT-2HackWeek/intro-hdf5) for more information on this data format.

## Hack ideas/utilities

CHANGE THIS TO HIGHLIGHT THE HACK REPOS AND NOTEBOOKS.

* How can we calculate sea ice roughness? What are the best metrics to use for this considering the spatial/temporal resolution of ICESat-2.
* ATL07 in the marginal ice zone - how can we extend the capability of this product in regions of low ice concentration? This might be important for understanding the potential for polynya detection with ICESat-2.
* Analyze the various beams! Show the consistency between strong and weak etc. Why might we want to use the weak beam for sea ice science?!
* How do ew better bin data considering the spatial/temporal sampling of IS2.
* Create some interative tools to display and explore the products - combined maps/time series etc (maybe using Bokeh or Plot.ly)



## To add to the repo during the hackweek

* Add some info on ATL09 and the thickness product.
* Show an example of reading in and processing a load of ATL07/10 files (maybe using dask).
* Add some NESOSIM snow depth/density data.

## References

Kwok, R., Cunningham, G. F., Hoffmann, J., Markus, T., 2016. Testing the ice-water discrimination and freeboard retrieval algorithms for the ICESat-2 mission, Remote Sensing of the Environment, 183, 13-25. 10.1016/j.rse.2016.05.011.

Luthcke, S.B., Pennington, T., Rebold, T., Thomas,  T., 2018. Ice, Cloud, and land Elevation Satellite (ICESat-2) Project Algorithm Theoretical Basis Document for the ICESat-2 Receive Photon Geolocation.

Markus, T., Neumann, T., Martino, A., Abdalati, W., Brunt, K., Csatho, B., Farrell, S., Fricker, H., Gardner, A., Harding, D., Jasinski, M., Kwok, R., Magruder, L., Lubin, D., Luthcke, S., Morison, J., Nelson, R., Neuenschwander, A., Palm, S., Popescu, S., Shum, C.K., Schutz, B.E., Smith, B., Yang, Y., Zwally, H.J., 2017. The Ice, Cloud and land Elevation Satellite-2 (ICESat-2): Science requirements, concept, and implementation. Remote Sensing of the Environment, 190, 260-273, doi: 10.1016/j.rse.2016.12.029.

Martino, A.J., Bock, M.R., Jones R.L. III, Neumann, T.A., Hancock, D.W., Dabney, P.W., Webb, C.E., 2018. Ice Cloud and Land Elevation Satellite – 2 Project Algorithm Theoretical Basis Document for ATL02 (Level-1B) data product processing. 
