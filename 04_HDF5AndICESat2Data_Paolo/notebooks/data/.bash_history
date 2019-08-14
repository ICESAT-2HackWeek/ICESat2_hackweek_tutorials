cd /mnt/devon-r0/shared_data/icesat/
ls
cd floating
ls
cd ..
ls
cd floating_/
ls
cd latest
ls
ls *_tile_????.h5
ls
ls *_TIDE.h5
cd ..
ls
cd latest_bak/
ls
cd ..
ls
mkdir topo
cd latest
ls
cd ..
ls
cd latest_bak/
ls
cd ..
ls
cd latest
ls
rsyn -av * ../latest_bak/
rsync -av * ../latest_bak/
ls
rm *TOPO*
ls
cd ..
ls
cd latest_bak/
ls
cd ..
ls
cd latest
ls
rsync * ../latest_bak/
ls
rm *_IBE.h5
ls
ls -1
cd ../latest_bak/
ls
pwd
ls
cd ..
ls
mkdir tide
mv latest/* tide/
cd latest
ls
cp ../latest_bak/*_tile_???.h5 .
cp ../latest_bak/*_tile_????.h5 .
ls
ls * | wc -l
h5ls IS1_READ_D_FILT_IBE_TIDE_NONAN_bbox_0_101000_-1212000_-1111000_buff_10_epsg_3031_tile_2200.h5
htop
tmux%
tmux
exit
htop
pwd
cd code/captoolkit/captoolkit/work/
sh ointerp.sh 
killall python
vim join.sh 
sh join.sh 
vim join.sh 
sh join.sh 
ls
vim join.sh 
sh join.sh 
vim ointerp_new.py 
vim ointerp_new_h.py 
sh ointerp.sh 
cd /u/devon-r2/shared_data/envisat/floating/latest/
ls *TIDEFIX*
ls *_SCAT.h5 
ls *_sf.h5
pwd
ipython
ls
killall python
ls /u/devon-r2/shared_data/ers1/floating/latest/SECFIT*_ICE*_AD*_r1535*.h5
h5ls /u/devon-r2/shared_data/ers1/floating/latest/SECFIT*_ICE*_AD*_r1535*.h5
h5ls /u/devon-r2/shared_data/ers1/floating/latest/SECFIT*_OCN*_AD*_r1535*.h5
h5ls /u/devon-r2/shared_data/ers1/floating/latest/SECFIT*_ALL*_AD*_r1535*.h5
h5ls /u/devon-r2/shared_data/ers2/floating/latest/SECFIT*_ICE*_AD*_r1535*.h5
h5ls /u/devon-r2/shared_data/ers2/floating/latest/SECFIT*_OCN*_AD*_r1535*.h5
h5ls /u/devon-r2/shared_data/ers2/floating/latest/SECFIT*_ALL*_AD*_r1535*.h5
cd
cd code/captoolkit/captoolkit/work/
sh secfit.sh 
sh join.sh 
ls
killall python
htop
ls
cd data/
ls
mkdir ers2
cd ers2/
ls
mkdir floating/latest
mkdir floating
ls
mkdir latest
ls
cd latest/
ls
pwd
cd ..
ls
cd ..
ls
cd cryosat2/
ls
mkdir floating
cd floating/
ls
mkdir latest
ls
cd latest/
ls
pwd
ls
h5ls *
ls
cd ../../../ers2/floating/la
cd ../../../ers2/floating/
ls
mkdir latest
ls
cd latest/
ls
pwd
ls
tmux
cd /mnt/devon-r0/shared_data/envisat/floating_/latest/
ls
ls ~/data/ers2/floating/latest/* ~/data/cryosat2/floating/latest/*
cd ~/code/ointerp/
ls
python ointerp.py_v2 ~/data/ers2/floating/latest/*_tile_2069*.h5 -v lon lat h_res 0.35 -t t_year -d 2 2 -r 1.5 -s _INTERP3 -n 1
rm /home/paolofer/data/ers2/floating/latest/ER2_AD_READ_FILT_IBE_TIDE_NONAN_TOPO_SCAT_bbox_-202000_-101000_-1111000_-1010000_buff_10_epsg_3031_tile_2069_time_1999.208_bin_050.h5_INTERP3
python ointerp.py_v2 ~/data/ers2/floating/latest/*_tile_2069*.h5 -v lon lat h_res 0.35 -t t_year -d 2 2 -r 1.5 -s _INTERP3 -n 1
cp ../captoolkit/captoolkit/work/plot_ointerp.py .
python plot_ointerp.py /home/paolofer/data/ers2/floating/latest/ER2_AD_READ_FILT_IBE_TIDE_NONAN_TOPO_SCAT_bbox_-202000_-101000_-1111000_-1010000_buff_10_epsg_3031_tile_2069_time_1999.208_bin_050.h5_INTERP3
python ointerp.py_v2 ~/data/ers2/floating/latest/*_tile_2069*.h5 -v lon lat h_res 0.35 -t t_year -d 2 2 -r 15 -s _INTERP3 -n 1
rm ~/data/ers2/floating/latest/*INTERP3
python ointerp.py_v2 ~/data/ers2/floating/latest/*_tile_2069*.h5 -v lon lat h_res 0.35 -t t_year -d 2 2 -r 15 -s _INTERP3 -n 1
kill %1
python ointerp.py_v2 ~/data/ers2/floating/latest/*_tile_2069*.h5 -v lon lat h_res 0.35 -t t_year -d 2 2 -r 1.5 -s _INTERP3 -n 1
rm ~/data/ers2/floating/latest/*INTERP3
python ointerp.py_v2 ~/data/ers2/floating/latest/*_tile_2069*.h5 -v lon lat h_res 0.35 -t t_year -d 2 2 -r 1.5 -s _INTERP3 -n 1 -b -3333000 3333000 -3333000 3333000
kill %1
python ointerp.py_v2 ~/data/ers2/floating/latest/*_tile_2069*.h5 -v lon lat h_res 0.35 -t t_year -d 2 2 -r 1.5 -s _INTERP3 -n 1 -b -3333000 3333000 -3333000 3333000
rm /home/paolofer/data/ers2/floating/latest/ER2_AD_READ_FILT_IBE_TIDE_NONAN_TOPO_SCAT_bbox_-202000_-101000_-1111000_-1010000_buff_10_epsg_3031_tile_2069_time_1999.208_bin_050.h5_INTERP3 
python ointerp.py_v2 ~/data/ers2/floating/latest/*_tile_2069*.h5 -v lon lat h_res 0.35 -t t_year -d 2 2 -r 1.5 -s _INTERP3 -n 1 -b -3333000 3333000 -3333000 3333000
kill %1
python ointerp.py_v2 ~/data/ers2/floating/latest/*_tile_2069*.h5 -v lon lat h_res 0.35 -t t_year -d 2 2 -r 1.5 -s _INTERP3 -n 1 -b -3333000 3333000 -3333000 3333000
rm ~/data/ers2/floating/latest/INTERP3
rm ~/data/ers2/floating/latest/*INTERP3
python ointerp.py_v2 ~/data/ers2/floating/latest/*_tile_2069*.h5 -v lon lat h_res 0.35 -t t_year -d 2 2 -r 1.5 -s _INTERP4 -n 1 -b -3333000 3333000 -3333000 3333000
h5ls ~/data/ers2/floating/latest/*INTERP4
python ointerp.py_v2 ~/data/ers2/floating/latest/*_tile_2069*.h5 -v lon lat h_res 0.35 -t t_year -d 2 2 -r 15 -s _INTERP5 -n 1 -b -3333000 3333000 -3333000 3333000
python ointerp.py_v2 ~/data/ers2/floating/latest/*_tile_2069*.h5 -v lon lat h_res 0.35 -t t_year -d 2 2 -r 15 -s _INTERP6 -n 1 -b -3333000 3333000 -3333000 3333000
tmux a
exit
cd /u/devon-r2/
ls
cd shared_data/
ls
cd ers
ls
cd ers1/
ls
cd 1991/
ls
h5dump E1_REAP_ERS_ALT_2__19910803T211738_19910804T222418_0002.ZIP
ope E1_REAP_ERS_ALT_2__19910803T211738_19910804T222418_0002.ZIP
open E1_REAP_ERS_ALT_2__19910803T211738_19910804T222418_0002.ZIP
ls
unzip E1_REAP_ERS_ALT_2__19910803T211738_19910804T222418_0002.ZIP
ls
ncdump E1_REAP_ERS_ALT_2__19910803T211738_19910803T224717_RP01.NC
ls
h5ls E1_REAP_ERS_ALT_2__19910803T211738_19910803T224717_RP01.NC
h5dump E1_REAP_ERS_ALT_2__19910804T002507_19910804T021412_RP01.NC
ncdump -h E1_REAP_ERS_ALT_2__19910804T002507_19910804T021412_RP01.NC
ls
cd ..
ls
cd ..
ls
cd ..
ls
cd cryosat2/
ls
cd floating/
ls
cd latest/
ls
cd ..
ls
cd ..
ls
cd ..
ls
cd ..
ls
cd ls
cd ..
ls
cd
cd /mnt/devon-r0/shared_data/cryosat2/
ls
cd floating
ls
h5ls CS_LTA__SIR_SIN_1B_20111128T000232_20111128T000355_C001_READ_A.h5
ls
cd /mnt/devon-r0/shared_data/
ls
cd envisat/
ls
cd floating
ls
cd ..
cd floating_/
ls
cd latest
ls
cd ..
ls
cd read/
ls
cd ..
ls
cd ..
ls
tmux
exit
tmux a
exit
cd
cd code/captoolkit/captoolkit/work/
ls
python readra2.py -h
rm -rfv /mnt/devon-r0/shared_data/envisat/floating_/read/*
rm -rfv /mnt/devon-r0/shared_data/envisat/floating_/read
mkdir /mnt/devon-r0/shared_data/envisat/floating_/read
python readra2.py /u/devon-r2/shared_data/ra2-ftp-ds.eo.esa.int/ENVISAT_RA2/V3.0/RA2_GDR_2P /mnt/devon-r0/shared_data/envisat/floating_/read /mnt/devon-r0/shared_data/masks/ANT_floatingice_240m.tif 3031 A 400 16 > readra2.log
python cleanup.py 
vim cleanup.py 
vim readra2.py 
vim cleanup.py 
tmux a
exit
tmux as
tmux a
exit
tmux a
esit
exit
tmux a
exit
tmux a
exit
matlab -nojvm -nosplash -nodisplay
w
ls -l
matlab -nojvm -nosplash -nodisplay
tmux a
exit
ping cae-lmgr8.jpl.nasa.gov
matlab -nodisplay -nojvm -nosplash
ping cae-lmgr6
ping cae-lmgr7
ping cae-lmgr8
nslookup cae-lmgr6
nslookup cae-lmgr7
nslookup cae-lmgr8
matlab -nodisplay -nojvm -nosplash
nslookup cae-lmgr8
matlab -nodisplay -nojvm -nosplash
htop
ls
ls /mnt/devon-r0/shared_data/icesat/floating_/read/*
rm /mnt/devon-r0/shared_data/icesat/floating_/read/*
ls /mnt/devon-r0/shared_data/icesat/floating_/read/*
ls /mnt/devon-r0/shared_data/icesat/GLAH12.034/
ls /mnt/devon-r2/shared_data/icesat/GLAH12.034/
ls /mnt/devon-r2/shared_data/icesat/GLAH12.034
ls /mnt/devon-r0/shared_data/icesat/RAW/GLAH12.034
cd /mnt/devon-r0/shared_data/ers
ls
cd RAW/
ls
h5ls AntIS_E2_REAP_ERS_ALT_2__19990616T173234_19990616T191204_RP01_ICE_READ_A_RM.h5
cd ..
ls
cd data/
ls
cd ..
ls
cd ..
ls
ls /mnt/devon-r0/shared_data/ers/RAW/AnIS
cd /mnt/devon-r0/shared_data/ers/RAW/AnIS
ls
cd ..
ls
pwd
cd AnIS/
ls
pwd
ls
cd cycle_0000/
ls
rm -rfv /mnt/devon-r0/shared_data/ers1/floating_/read/
rm -rfv /mnt/devon-r0/shared_data/ers2/floating_/read/
rm -rfv /mnt/devon-r0/shared_data/icesat/floating_/read/
htop
cd ..
ls
cd ..
ls
cd ..
ls
cd ..
ls
cd cryosat2/
ls
cd floating
ls
h5ls CS_LTA__SIR_SIN_1B_20130208T073705_20130208T074328_C001_READ_A.h5
cd
cd code/captoolkit/captoolkit/work/
python cleanup.py -h
python cleanup.py /mnt/devon-r0/shared_data/envisat/floating_/read/* -n 16
python cleanup.py '/mnt/devon-r0/shared_data/envisat/floating_/read/*' -n 16
python cleanup.py /mnt/devon-r0/shared_data/envisat/floating_/read/* -n 16
python cleanup.py "/mnt/devon-r0/shared_data/envisat/floating_/read/*" -n 16
python cleanup.py -n 16 "/mnt/devon-r0/shared_data/envisat/floating_/read/*"
python cleanup.py -h
vim cleanup.py 
python cleanup.py "/mnt/devon-r0/shared_data/envisat/floating_/read/*" -n 16
vim cleanup.py 
python cleanup.py "/mnt/devon-r0/shared_data/envisat/floating_/read/*" -n 16
vim cleanup.py 
python cleanup.py "/mnt/devon-r0/shared_data/envisat/floating_/read/*" -n 16
python readra2.py /u/devon-r2/shared_data/ra2-ftp-ds.eo.esa.int/ENVISAT_RA2/V3.0/RA2_GDR_2P /mnt/devon-r0/shared_data/envisat/floating_/read /mnt/devon-r0/shared_data/masks/ANT_floatingice_240m.tif 3031 A 400 16 >> readra2.log
ls
tail readra2.log 
ls
python cleanup.py /mnt/devon-r0/shared_data/envisat/floating_/read/* -n 16
python cleanup.py '/mnt/devon-r0/shared_data/envisat/floating_/read/*' -n 16
sh read.sh &
tail readres_e1_oc.
mkdir /mnt/devon-r0/shared_data/ers1/floating_/read
ls
vim read.sh 
sh read.sh 
rm -rfv /mnt/devon-r0/shared_data/ers1/floating_/read/*
sh read.sh 
kill %1
sh read.sh 
htop
vim ibecor.sh 
cd
cd code/tmdtoolbox/
ls
cd tmd_toolbox/
ls
vim tidecor.m 
cat tidecor.sh 
ls *.sh
cat tidecor.sh 
/u/devon0/gardnera/Applications/Matlab/R2018a/bin/matlab --help
/u/devon0/gardnera/Applications/Matlab/R2018a/bin/matlab
/u/devon0/gardnera/Applications/Matlab/R2018a/bin/matlab --nodesktop
which matlab
matlab -nodesktop
/u/devon0/gardnera/Applications/Matlab/R2018a/bin/matlab -nodesktop < tidecor.m
exit
h5l s/mnt/devon-r0/shared_data/envisat/floating_/read...26T162307_3018_093_0504____PAC_R_NT_003_READ_D.h
h5ls /mnt/devon-r0/shared_data/envisat/floating_/read...26T162307_3018_093_0504____PAC_R_NT_003_READ_D.h5
h5ls /mnt/devon-r0/shared_data/envisat/floating_/read...26T162307_3018_093_0504____PAC_R_NT_003_RE
rm /mnt/devon-r0/shared_data/envisat/floating_/read...26T162307_3018_093_0504____PAC_R_NT_003_READ_D.h5
ls /mnt/devon-r0/shared_data/envisat/floating_/read/ENV_RA_2_GDR____20101001T111442_20101001T120500_20170826T162307_3018_093_0504____PAC_R_NT_003_READ_D.h5 
h5ls /mnt/devon-r0/shared_data/envisat/floating_/read/ENV_RA_2_GDR____20101001T111442_20101001T120500_20170826T162307_3018_093_0504____PAC_R_NT_003_READ_D.h5 
rm -fv /mnt/devon-r0/shared_data/envisat/floating_/read/EMPTY_FILES
rm -fv /mnt/devon-r0/shared_data/envisat/floating_/read/EMPTY_FILES/*
rm -rfv /mnt/devon-r0/shared_data/envisat/floating_/read/EMPTY_FILES
ls /mnt/devon-r0/shared_data/envisat/floating_/read/EMPTY_FILES/*
h5ls /mnt/devon-r0/shared_data/envisat/floating_/read/EMPTY_FILES/*
tail readra2.log 
ls /mnt/devon-r0/shared_data/envisat/floating_/read/ENV_RA_2_GDR____20120406T152523_20120406T161530_20170908T070956_3007_113_0482____PAC_R_NT_003_READ_A.h5 
h5ls /mnt/devon-r0/shared_data/envisat/floating_/read/ENV_RA_2_GDR____20120406T152523_20120406T161530_20170908T070956_3007_113_0482____PAC_R_NT_003_READ_A.h5
h5ls /mnt/devon-r0/shared_data/envisat/floating_/read/ENV_RA_2_GDR____20120407T094757_20120407T103803_20170908T071518_3006_113_0504____PAC_R_NT_003_READ_D.h5
rm -rfv /mnt/devon-r0/shared_data/envisat/floating_/read/EMPTY_FILES
ls
ls /mnt/devon-r0/shared_data/envisat/floating_/read/*.h5 | wc -l
ls /mnt/devon-r0/shared_data/envisat/floating_/read/EMPTY_FILES/**.h5 | wc -l
ls /mnt/devon-r0/shared_data/envisat/floating_/read/EMPTY_FILES/*.h5 | wc -l
h5ls /mnt/devon-r0/shared_data/envisat/floating_/read/EMPTY_FILES/*.h5
rm -rfv /mnt/devon-r0/shared_data/envisat/floating_/read/EMPTY_FILES
find /mnt/devon-r0/shared_data/envisat/floating_/read/ -name *.h5 | xargs -i ls {} | wc -l
ls
vim readers.py 
mkdir /mnt/devon-r0/shared_data/ers2/floating_/read
vim -p readers.py readra2.py 
ls /mnt/devon-r0/shared_data/icesat/floating_/
mkdir /mnt/devon-r0/shared_data/icesat/floating_/read
tail readgla.log 
vim readgla.py 
head readgla.log 
rm -rfv /mnt/devon-r0/shared_data/ers2/floating_/read/*
rm -rfv /mnt/devon-r0/shared_data/icesat/floating_/read/*
tail readgla.log 
ls /mnt/devon-r0/shared_data/ers2/floating_/read/*
tail readgla.log 
ls /mnt/devon-r0/shared_data/envisat/floating_/read/*
vim rename.sh 
sh trackfilt.sh 
ls
vim trackfilt.sh 
sh trackfilt.sh 
vim trackfilt
python rename.py /mnt/devon-r0/shared_data/icesat/floating_/latest/*
vim trackfilt.sh 
sh trackfilt.sh 
ls
python trackfilt.py -h
python rename.py /mnt/devon-r0/shared_data/icesat/floating_/latest/*
vim trackfilt.sh 
python trackfilt.py -f "/mnt/devon-r0/shared_data/icesat/floating_/latest/*.h5" -v t_sec h_cor -a -n 16
sh slopecor.sh 
sh ibecor.sh 
vim ibecor.sh 
vim trackfilt.sh 
sh trackfilt.sh 
vim read.sh 
cd /mnt/devon-r0/shared_data/ers1/floating_/latest/
ls *IBE.h5
ls
h5ls AntIS_E1_REAP_ERS_ALT_2__19960602T211414_19960602T225409_RP01_ICE_READ_D_FILT_RM.h5
h5ls AntIS_E1_REAP_ERS_ALT_2__19960602T211414_19960602T225409_RP01_ICE_READ_D_FILT_RM_IBE.h5 
ls
rm *_IBE*
cd ..
ls
find latest/ -name *_IBE.h5 -delete
find latest/ -name *_IBE2.h5 -delete
cd latest/
ls
pwd
cd ../../../
find ers1/floating_/latest/ -name *_IBE.h5 -delete
find ers1/floating_/latest/ -name *_IBE2.h5 -delete
find ers2/floating_/latest/ -name *_IBE.h5 -delete
find ers2/floating_/latest/ -name *_IBE2.h5 -delete
find envisat/floating_/latest/ -name *_IBE.h5 -delete
find envisat/floating_/latest/ -name *_IBE2.h5 -delete
find cryosat2/floating_/latest/ -name *_IBE2.h5 -delete
find cryosat2/floating_/latest/ -name *_IBE.h5 -delete
find icesat/floating_/latest/ -name *_IBE.h5 -delete
find icesat/floating_/latest/ -name *_IBE2.h5 -delete
cd cryosat2/floating_/
ls
cd latest/
ls
h5ls CS_OFFL_SIR_SIN_1B_20171231T231416_20171231T231713_C001_READ_D_FILT.h5
pwd
ls
cd ../../../
ls
cd ers2/floating_/latest/
ls
h5ls AntIS_E2_REAP_ERS_ALT_2__20030101T035710_20030101T054026_RP01_ICE_READ_A_FILT_RM_IBE_IBE2.h5
ls
cat /home/paolofer/.matlab/R2018a_licenses
cat /u/devon0/gardnera/Applications/Matlab/R2018a/licenses/
ls /u/devon0/gardnera/Applications/Matlab/R2018a/licenses/
ls /u/devon0/gardnera/Applications/Matlab/R2018a/licenses/network.lic 
cat /u/devon0/gardnera/Applications/Matlab/R2018a/licenses/network.lic 
exit
tmux a
exit
matlab
ls u/devon0/gardnera/Applications/Matlab/R2018a/
ls u/devon0/gardnera/Applications/Matlab/R2018a
ls /u/devon0/gardnera/Applications/Matlab/R2018a
ls /u/devon0/gardnera/Applications/Matlab/R2018a/bin/matlab
/u/devon0/gardnera/Applications/Matlab/R2018a/bin/matlab
/u/devon0/gardnera/
ls
cd /u/devon0/gardnera/
ls
ls *.lic
cd Documents/
ls
cd MATLAB/
ls
cd ..
ls
cd Applications/
ls
cd Matlab/
ks
ls
cd R2018a/
ls
lmstat -h
cd license
ls
cd licenses
ls
emacs network.lic 
ls -l network.lic 
pwd
ls /home/paolofer/.matlab/R2018a/
cp network.lic /home/paolofer/.matlab/R2018a/
matlab 
/u/devon0/gardnera/Applications/Matlab/R2018a/bin/matlab
mkdir /home/paolofer/.matlab/R2018a_licenses
mkdir /home/paolofer/.matlab/R2018a/network.lic /home/paolofer/.matlab/R2018a_licenses/
cp /home/paolofer/.matlab/R2018a/network.lic /home/paolofer/.matlab/R2018a_licenses/
/u/devon0/gardnera/Applications/Matlab/R2018a/bin/matlab
ls
open matlab_R2019a_glnxa64.zip 
unzip matlab_R2019a_glnxa64.zip 
ls
rm -rfv activate.ini archives bin build help install installer_input.txt install_guide.pdf java license_agreement.txt log patents.txt pkg readme.txt sys trademarks.txt ui VersionInfo.xml 
ls
mkdir matlab
mv matlab_R2019a_glnxa64.zip matlab/
ls
cd matlab/
ls
unzip matlab_R2019a_glnxa64.zip 
ls
ls -1
cat installer_input.txt 
ls
./install 
./install -mode silent
sudo sh install
sh install
vim install
ls -1
vim license_agreement.txt 
vim readme.txt 
ls
sh install
sh install -mode silent
grep agree *.txt
vim license_agreement.txt 
vim installer_input.txt 
sh install -mode silent
vim installer_input.txt 
ls
grep agreeTo *.txt
sh install -mode silent installer_input.txt 
vim license_agreement.txt 
ls
vim install
sh install -mode silent -inputFile installer_input.txt 
cp installer_input.txt ls
rm ls 
ls
pwd
ls -l installer_input.txt 
cp installer_input.txt installer_input.txt_my
ls -l installer_input.txt_my 
ls
rm -rfv installer_input.txt_my 
ls
ls installer_input.txt 
ls -l installer_input.txt 
sh install -mode silent -inputFile installer_input.txt 
cp installer_input.txt /tmp/mathworks_130793/
sh install -mode silent -inputFile installer_input.txt 
sh install -mode silent 
tmux a
cd code/tmdtoolbox/
ls
cd tmd_toolbox/
ls
pwd
htop
tmux a
rm -rfv /mnt/devon-r0/shared_data/envisat/floating_/read/*
rm -rfv /mnt/devon-r0/shared_data/envisat/floating_/read
mkdir /mnt/devon-r0/shared_data/envisat/floating_/read
vim read.sh 
cd /mnt/devon-r0/shared_data/
ls
cd ers1/
ls
cd floating_/
ls
cd latest
ls
cd ..
ls
rm -rfv latest
ls
cp -rfv read latest
ls
rm -rfv latest_bak
ls
cd ../../ers2/
ls
cd floating_/
ls
rm -rfv latest latest_bak ocn
ls
cd ../../envisat/
ls
cd floating_/
ls
rm -rfv latest latest_bak
cd ../../icesat/floating_/
ls
rm -rfv latest latest_bak topo
ls
cd read/
ls
h5ls GLAH12_2004_10_310_000207_READ_D.H5
pwd
cd ..
ls
cp -rfv read latest
cd ../../envisat/floating_/
ls
cp -rfv read latest
cd ../../ers2/floating_/
ls
cp -rfv read latest
cd ../../ers2/floating_/
ls
rm -rfv latest
cp -rfv read latest
cd ../../ers1/floating_/
ls
cd latest/
ls
pwd
cd ../../
cd ../..
ls
cd -
ls
cd ..
ls
ls ers2/floating_/latest/
ls envisat/floating_/latest/ | tail
ls icesat/floating_/latest/ | tail
ls icesat/floating_/latest/ | wc -l
/mnt/devon-r0/shared_data/icesat/floating_/latest/*.h5
ls /mnt/devon-r0/shared_data/icesat/floating_/latest/*.h5
pwd
cd icesat/floating_/
ls
rm -rfv latest
cd read/
ls
h5ls GLAH12_2006_10_315_000487_READ_A.H5
ls
cd ..
ls
cp -rfv read latest
ls
cd latest/
ls
ls /mnt/devon-r0/shared_data/icesat/floating_/latest/
ls /mnt/devon-r0/shared_data/icesat/floating_/latest/*.h5;
ls
h5l sGLAH12_2004_10_310_000207_READ_D_FILT.h5
h5ls GLAH12_2004_10_310_000207_READ_D_FILT.h5
ls /mnt/devon-r0/shared_data/icesat/floating_/latest/*IBE.h5 | wc -l
ls /mnt/devon-r0/shared_data/envisat/floating_/latest/*IBE.h5 | wc -l
ls /mnt/devon-r0/shared_data/ers2/floating_/latest/*IBE.h5 | wc -l
ls /mnt/devon-r0/shared_data/ers1/floating_/latest/*IBE.h5 | wc -l
pwd
cd ../../
ls
cd ..
ls
cd cryosat2/
ls
cd floating_/
ls
cd latest
ls
cd ..
ls
cd read/
ls
h5ls CS_OFFL_SIR_SIN_1B_20171231T231925_20171231T232447_C001_READ_A.h5
cd ..
ls
rm -rfv latest latest_bak
ls
cp -fv read latest
cp -rfv read latest
ls
cd latest/
ls
cd ../../../
ls
cd envisat/
ls
cd RAW/
ls
cd ..
ls
cd /u/devon-r2/shared_data/ra2-ftp-ds.eo.esa.int/ENVISAT_RA2/V3.0/RA2_GDR_2P
ls
cd cycle_006/
ls
ncdump -h ENV_RA_2_GDR____20020617T204407_20020617T213424_20170609T084755_3017_006_1002____PAC_R_NT_003.nc
h5ls ENV_RA_2_GDR____20020617T204407_20020617T213424_20170609T084755_3017_006_1002____PAC_R_NT_003.nc
ls
h5dump -h ENV_RA_2_GDR____20020617T204407_20020617T213424_20170609T084755_3017_006_1002____PAC_R_NT_003.nc
h5dump -H ENV_RA_2_GDR____20020617T204407_20020617T213424_20170609T084755_3017_006_1002____PAC_R_NT_003.nc
cd
cd code/captoolkit/captoolkit/work/
sh ibecor.sh 
mv ibecor_envi.py ibecor_env.py
sh ibecor.sh 
sh merge.sh 
ls
pwd
ls
pwd
cd
ls /mnt/devon-r0/shared_data/ers1/floating_/latest/ER1_OCN_READ_A_FILT_IBE_*
ls /mnt/devon-r0/shared_data/ers1/floating_/latest/*TIDE*
ls /mnt/devon-r0/shared_data/ers2/floating_/latest/*TIDE*
ls /mnt/devon-r0/shared_data/envisat/floating_/latest/*TIDE*
pwd
cd code/tmdtoolbox/tmd_toolbox/
/u/devon0/gardnera/Applications/Matlab/R2018a/bin/matlab -nodesktop < tidecor.m 
exit
exit
tmux a
cd /mnt/devon-r0/shared_data/ers1/floating_/latest/
ls
pwd
tmux
cd /mnt/devon-r0/shared_data/cryosat2/floating_/latest/
ls
tmux
pwd
/u/devon0/gardnera/Applications/Matlab/R2018a/bin/matlab
/u/devon0/gardnera/Applications/Matlab/R2018a/bin/matlab
cd code/tmdtoolbox/tmd_toolbox/
cap tidecor.sh 
cat tidecor.sh 
/u/devon0/gardnera/Applications/Matlab/R2018a/bin/matlab -nodesktop
pwd
hostname 
cd
cd /mnt/devon-r0/shared_data/icesat/floatingla
cd /mnt/devon-r0/shared_data/icesat/floating_/latest/
ls
pwd
matlab -nodisplay -nosplash -nojvm
cd code/captoolkit/captoolkit/work/
ls
cd ..
ls
cd ..
ls
cd ..
ls
cd tmdtoolbox/tmd_toolbox/
ls
cat tidecor.sh 
/u/devon0/gardnera/Applications/Matlab/R2018a/bin/matlab -nodesktop
exit
tmux a
ls /mnt/devon-r0/shared_data/ers1/floating_/latest/*.h5
ls /mnt/devon-r0/shared_data/ers1/floating_/latest/*.h5 | head
find /mnt/devon-r0/shared_data/ers1/floating_/latest/ -name *.h5 | xargs -i tail {}
cd ..
find /mnt/devon-r0/shared_data/ers1/floating_/latest/ -name *.h5 | xargs -i tail {}
ls
j
ls
exit
htop
ls
htop
pwd
cd code/tmdtoolbox/tmd_toolbox/
ls
vim tidecor.m 
ls
cat tidecor.m 
cat tidecor.sh 
/u/devon0/gardnera/Applications/Matlab/R2018a/bin/matlab -nodesktop
cd 
cd ~/code/captoolkit/captoolkit/work/
ls
vim -p tidefix.py tidefix.sh
exit
tmux
exit
tmux a
exit
tmux a
exit
tmux a
exit
tmux a
exit
tmux a
exit
tmux a
exit
cd /u/devon-r2/shared_data/icesat2/atl06/rel205/read/AIS/floating
ls
h5ls ATL06_20181120024525_08010112_205_01_gt1r_A.h5
cd
tmux
exit
tmux a
exit
ls
cd floating
h5ls ATL06_205_01_gt1r_A_02_TIDE.h5
du -sh *
cd ..
du -sh *
tmux a
htop
cd code/captoolkit/captoolkit/icesat2/
python testtime.py /u/devon-r2/shared_data/icesat2/atl06/rel205/read/AIS/floating/ATL06_20181221192132_12850112_205_01_gt2l_A.h5
ls
cd ..
ls
cd ..
ls
cd
ls
cd code/tmdtoolbox/
ls
cd tmd_toolbox/
ls
vim tidecor.m 
cp tidecor.m tidecor_is2.m 
htop
cd
ls
pwd
cd
cd code/captoolkit/captoolkit/work/
iceauth 
ls
mkdir icesat2
cd icesat2/
ls
pwd
ls /u/devon-r0/shared_data/ibe/
python ibecor.py -h
sh ibecor_ice.sh 
python rename.py /u/devon-r2/shared_data/icesat2/atl06/rel205/floating/*
python applycor.py -h
python applycor.py /u/devon-r2/shared_data/icesat2/atl06/rel205/floating/* -v h_elv -c h_tide h_load h_ibe 
ls
sh ibecor.s
sh ibecor_ice.sh 
ls
rm applycor.py 
ls
vim ibecor_ice.sh 
sh ibecor_ice.sh 
vim ibecor_ice.sh 
ls /u/devon-r2/shared_data/icesat2/atl06/rel205/floating_bak/*_TIDE.h5
cat ibecor_ice.sh 
sh ibecor_ice.sh 
ls
python /u/devon-r2/shared_data/icesat2/atl06/rel205/floating/* -v h_elv -c h_tide h_load h_ibe
python applycor.py /u/devon-r2/shared_data/icesat2/atl06/rel205/floating/* -v h_elv -c h_tide h_load h_ibe
python applycor.py /u/devon-r2/shared_data/icesat2/atl06/rel205/floating/*_IBE.h5 -v h_elv -c h_tide h_load h_ibe
ls
cd /u/devon-r2/shared_data/icesat2/atl06/rel205/floating
ls
ssh aurora
ls
cd /u/devon-r2/
ls
cd shared_data/
ls
cd icesat2/
ls
cd atl06/
ls
cd rel205/
ls
cd raw/
ls
h5ls ATL06_20181220200756_12710101_205_01.h5
h5ls -r ATL06_20181220200756_12710101_205_01.h5
pwd
ls
pwd
cd ..
ls
cd ..
ls
vim proc.sh 
vim merge.sh 
ls
pwd
cd rel205/
ls
cd raw/
ls
ipython
tmux
exit
tmux a
exit
tmux a
exit
tmux a
exit
tmux a
exit
tmux a
exit
cd /mnt/devon-r0/shared_data/icesat/floating_/for_xovers
ls
h5ls IS1_READ_A_FILT_RM_TIMEFIX_IBE_IBE2_10_TIDE_NONAN_COR.h5
ls
cd
cd code/captoolkit/captoolkit/work/
ls
vim commands3.txt 
exit
tmux a
exit
tmux a
exit
tmux a
exit
tmux a
exit
ls
cd code/
ls
cd work/
ls
mget lasercor.py 
ftp
ls
exit
ls
cd code/
ls
cd work/
ls
cd ..
ls
cd captoolkit/
ls
pwd
ls
cd /u/devon-r2/shared_data/icesat2/atl06/
ls
rm 1
ls -1
ls
ls GrIS_PRED_MASKED.tif 
pwd
cd /u/devon-r2/shared_data/icesat2/atl06/
ls
ls *PRED*
htop
exit
htop
who
exit
cd /u/devon-r2/shared_data/icesat2/atl06/
ls
h5copy --help
h5copy -i ICE1_ICE2_AnIS_XOVER_R209_2003_2008_ALL_BEAMS_FLOAT.h5 -o ICE1_ICE_ANT_FLOAT_XOVER_COODS.h5 -s lon -d lon
h5copy -i ICE1_ICE2_AnIS_XOVER_R209_2003_2008_ALL_BEAMS_FLOAT.h5 -o ICE1_ICE_ANT_FLOAT_XOVER_COODS.h5 -s lat -d lat
exit
