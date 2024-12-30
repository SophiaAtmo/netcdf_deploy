#!/bin/bash
HOME="$/path_to_your_netcdf_library"

# build_cunit.sh
version_cunit="2.1-2"

wget http://downloads.sourceforge.net/project/cunit/CUnit/${version_cunit}/CUnit-${version_cunit}-src.tar.bz2
tar xf CUnit-${version_cunit}-src.tar.bz2
cd CUnit-${version_cunit}
./configure --prefix=${HOME}/CUnit/${version_cunit}
make
make install