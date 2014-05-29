#!/bin/bash

./configure --prefix=$PREFIX \
    --enable-shared \
    --enable-python \
    --disable-fortran \
    --with-jasper=$PREFIX \
    --with-netcdf=$PREFIX
make
make install

