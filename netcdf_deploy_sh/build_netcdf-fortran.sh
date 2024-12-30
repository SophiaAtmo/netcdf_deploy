#!/bin/bash
HOME="$/path_to_your_netcdf_library"

# build_netcdf-fortran.sh
version_netcdf4_fortran="4.6.1"
version_netcdf4="4.8.1"
wget https://downloads.unidata.ucar.edu/netcdf-fortran/${version_netcdf4_fortran}/netcdf-fortran-${version_netcdf4_fortran}.tar.gz
tar xf netcdf-fortran-${version_netcdf4_fortran}.tar.gz
cd netcdf-fortran-${version_netcdf4_fortran}
#
export NCDIR="${HOME}/netcdf4-intel"
export LD_LIBRARY_PATH="${NCDIR}/lib:${LD_LIBRARY_PATH}"
export NFDIR="${HOME}/netcdf4-intel"
export CPPFLAGS="-I${NCDIR}/include $CPPFLAGS"
export LDFLAGS="-L${NCDIR}/lib $LDFLAGS"
export OPTIM="-O3 -mcmodel=large -fPIC ${LDFLAGS}"
export CC=gcc
export FC=gfortran
export F77=gfortran
export F90=gfortran
export CPP="gcc -E -mcmodel=large"
export CXXCPP="g++ -E -mcmodel=large"
export CPPFLAGS="-DNDEBUG -DpgiFortran ${LDFLAGS} $CPPFLAGS"
export CFLAGS="${OPTIM}"
export FCFLAGS="${OPTIM}"
export F77FLAGS="${OPTIM}"
export F90FLAGS="${OPTIM}"
#
./configure --prefix=${NFDIR} --enable-large-file-tests --with-pic
make
make check
make install