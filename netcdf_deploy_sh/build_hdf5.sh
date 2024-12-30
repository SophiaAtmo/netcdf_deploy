#!/bin/bash
HOME="$/path_to_your_netcdf_library"

# build_hdf5.sh
version_hdf5="1.12.0"
version_zlib="1.3.1"
version_szip="2.1.1"
wget https://hdf-wordpress-1.s3.amazonaws.com/wp-content/uploads/manual/HDF5/HDF5_1_12_0/source/hdf5-1.12.0.tar.gz
tar xf hdf5-${version_hdf5}.tar.gz
cd hdf5-${version_hdf5}

export FC=gfortran
export F77=gfortran
export F90=gfortran
export CC=gcc
export CXX=g++

./configure \
--prefix=/home/patrick/NC_library/hdf5/1.12.0 \
--with-zlib=/home/patrick/NC_library/zlib/1.3.1 \
--with-szlib=/home/patrick/NC_library/szip/2.1.1 \
--enable-hl \
--enable-fortran \
--with-default-api-version=v18

make
make check
make install
make check-install