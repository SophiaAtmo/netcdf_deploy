#!/bin/bash
HOME="$/path_to_your_netcdf_library"

# build_curl.sh for building Curl using Intel compiler for OPeNDAP
version_curl="7.76.1"
wget https://curl.se/download/curl-${version_curl}.tar.gz
tar xf curl-${version_curl}.tar.gz
cd curl-${version_curl}/

export OPTIM="-O3 -mcmodel=large -fPIC"
export CC=gcc  
export CXX=g++  
export CPP="gcc -E"  
export CXXCPP="g++ -E" 
export CFLAGS="${OPTIM}"
export CXXFLAGS="${OPTIM}"

./configure --prefix=${HOME}/curl/${version_curl}
make
make test
make install