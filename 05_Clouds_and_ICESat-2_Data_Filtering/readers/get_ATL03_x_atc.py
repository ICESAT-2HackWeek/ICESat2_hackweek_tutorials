import numpy as np


# Adapted from a notebook by Tyler Sutterly 6/14/2910



def get_ATL03_x_atc(IS2_atl03_mds, IS2_atl03_attrs, IS2_atl03_beams):
    # calculate the along-track and across-track coordinates for ATL03 photons

    Segment_ID = {}
    Segment_Index_begin = {}
    Segment_PE_count = {}
    Segment_Distance = {}
    Segment_Length = {}

    #-- background photon rate
    background_rate = {}

    #-- for each input beam within the file
    for gtx in sorted(IS2_atl03_beams):
        #-- data and attributes for beam gtx
        val = IS2_atl03_mds[gtx]
        val['heights']['x_atc']=np.zeros_like(val['heights']['h_ph'])+np.NaN
        val['heights']['y_atc']=np.zeros_like(val['heights']['h_ph'])+np.NaN
        attrs = IS2_atl03_attrs[gtx]
        #-- ATL03 Segment ID
        Segment_ID[gtx] = val['geolocation']['segment_id']
        n_seg = len(Segment_ID[gtx])
        #-- first photon in the segment (convert to 0-based indexing)
        Segment_Index_begin[gtx] = val['geolocation']['ph_index_beg'] - 1
        #-- number of photon events in the segment
        Segment_PE_count[gtx] = val['geolocation']['segment_ph_cnt']
        #-- along-track distance for each ATL03 segment
        Segment_Distance[gtx] = val['geolocation']['segment_dist_x']
        #-- along-track length for each ATL03 segment
        Segment_Length[gtx] = val['geolocation']['segment_length']
        #-- Transmit time of the reference photon
        delta_time = val['geolocation']['delta_time']

        #-- iterate over ATL03 segments to calculate 40m means
        #-- in ATL03 1-based indexing: invalid == 0
        #-- here in 0-based indexing: invalid == -1   
        segment_indices, = np.nonzero((Segment_Index_begin[gtx][:-1] >= 0) &
            (Segment_Index_begin[gtx][1:] >= 0))
        for j in segment_indices:
            #-- index for segment j
            idx = Segment_Index_begin[gtx][j]
            #-- number of photons in segment (use 2 ATL03 segments)
            c1 = np.copy(Segment_PE_count[gtx][j])
            c2 = np.copy(Segment_PE_count[gtx][j+1])
            cnt = c1 + c2
            #-- time of each Photon event (PE)
            segment_delta_times = val['heights']['delta_time'][idx:idx+cnt]
            #-- Photon event lat/lon and elevation (WGS84)
            segment_heights = val['heights']['h_ph'][idx:idx+cnt]
            segment_lats = val['heights']['lat_ph'][idx:idx+cnt]
            segment_lons = val['heights']['lon_ph'][idx:idx+cnt]
            #-- Along-track and Across-track distances
            distance_along_X = np.copy(val['heights']['dist_ph_along'][idx:idx+cnt])
            distance_along_X[:c1] += Segment_Distance[gtx][j]
            distance_along_X[c1:] += Segment_Distance[gtx][j+1]
            distance_along_Y = np.copy(val['heights']['dist_ph_across'][idx:idx+cnt])
            val['heights']['x_atc'][idx:idx+cnt]=distance_along_X
            val['heights']['y_atc'][idx:idx+cnt]=distance_along_Y