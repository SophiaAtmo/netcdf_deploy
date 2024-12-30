#!/bin/bash
HOME="$/path_to_your_netcdf_library"

# build_szip.sh
version_szip="2.1.1"
wget https://support.hdfgroup.org/ftp/lib-external/szip/${version_szip}/src/szip-${version_szip}.tar.gz
tar xf szip-${version_szip}.tar.gz
cd szip-${version_szip}
./configure --prefix=${HOME}/szip/${version_szip}
make
make check
make install