# netcdf_deploy
[Reference Link](https://home.hiroshima-u.ac.jp/~leehs/?page_id=5612)\\
run the code after changing the mode, chmod a+x build_cunit.sh

Environmental variables in ~/.bashrc

## Intel oneAPI 

export OPTIM="-O3"\
export CC=icc\
export CXX=icpc\
export CFLAGS=${OPTIM}\
export CXXFLAGS=${OPTIM\
export F77=ifort\
export FC=ifort\
export F90=ifort\
export FFLAGS=${OPTIM}\
export CPP="icc -E"\
export CXXCPP="icpc -E"\

export PATH="$path_to_your_netcdf4-intel/bin:$PATH"\
export LD_LIBRARY_PATH="$path_to_your_netcdf4-intel/lib:$LD_LIBRARY_PATH"
