#!/bin/bash

chmod +x configure
./configure --prefix=$PREFIX \
    --enable-shared \
    --disable-opengl
make
make install
