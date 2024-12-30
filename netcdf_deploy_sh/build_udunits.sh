#!/bin/bash
HOME="$/path_to_your_netcdf_library"

# build_udunits.sh
version_udunits="2.2.28"
wget https://downloads.unidata.ucar.edu/udunits/${version_udunits}/udunits-${version_udunits}.tar.gz
tar xf udunits-${version_udunits}.tar.gz
cd udunits-${version_udunits}
./configure --prefix="${HOME}/udunits/${version_udunits}"
make
make check
make install
make clean