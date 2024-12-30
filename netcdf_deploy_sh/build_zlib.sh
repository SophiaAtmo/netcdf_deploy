#!/bin/bash
HOME="$/path_to_your_netcdf_library"

# build_zlib.sh for building zlib using Intel compiler
version_zlib="1.3.1"
wget https://zlib.net/zlib-${version_zlib}.tar.gz
tar xf zlib-${version_zlib}.tar.gz
cd zlib-${version_zlib}
./configure --prefix=${HOME}/zlib/${version_zlib}
make
make install