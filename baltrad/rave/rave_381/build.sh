#!/bin/bash

chmod +x configure
./configure  \
    --prefix=$PREFIX/baltrad/rave \
    --with-hdf5=$PREFIX/include,$PREFIX/lib \
    --with-hlhdf=$PREFIX/baltrad/hlhdf
make
make test
make install
