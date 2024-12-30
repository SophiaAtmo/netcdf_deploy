# netcdf_deploy
[Reference Link](https://home.hiroshima-u.ac.jp/~leehs/?page_id=5612)\
run the code after changing the mode, chmod a+x build_cunit.sh

Environmental variables in ~/.bashrc
# CUnit
export LD_LIBRARY_PATH="/path_to_your_CUnit/2.1-2/lib:$LD_LIBRARY_PATH"

# UDUNITS
export UDUNITS2_XML_PATH="/home/patrick/NC_library/udunits/2.2.28/share/udunits/udunits2.xml"
export PATH="/path_to_your_udunits/2.2.28/bin:$PATH"

export PATH="/home/patrick/NC_library/netcdf4-intel/bin:$PATH"
export LD_LIBRARY_PATH="/path_to_your_netcdf4-intel/lib:$LD_LIBRARY_PATH"
