#!/bin/bash
HOME="$/path_to_your_netcdf_library"

# build_netcdf-c.sh
version_netcdf4="4.8.1"
version_hdf5="1.12.0"
version_zlib="1.3.1"
version_curl="7.76.1"
wget https://github.com/Unidata/netcdf-c/archive/refs/tags/v${version_netcdf4}.tar.gz
tar xf v${version_netcdf4}.tar.gz
cd netcdf-c-${version_netcdf4}/
#
export LDFLAGS="-L${HOME}/hdf5/${version_hdf5}/lib -L${HOME}/zlib/${version_zlib}/lib -L${HOME}/curl/${version_curl}/lib"
export CPPFLAGS="-I${HOME}/hdf5/${version_hdf5}/include -I${HOME}/zlib/${version_zlib}/include ${LDFLAGS} -I${HOME}/curl/${version_curl}/include"
export OPTIM="-O3 -mcmodel=large -fPIC ${LDFLAGS}"
#
export CC=gcc
export CXX=g++
export CPP="gcc -E -mcmodel=large"
export CXXCPP="g++ -E -mcmodel=large"
#
export CFLAGS="${OPTIM}"
export CXXFLAGS="${OPTIM}"
#
./configure --prefix=${HOME}/netcdf4-intel --enable-large-file-tests --with-pic
make
make check
make install