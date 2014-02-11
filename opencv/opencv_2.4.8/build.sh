#!/bin/bash

mkdir build
cd build
cmake                                                               \
    -DPYTHON_EXECUTABLE=$PREFIX/bin/python                          \
    -DPYTHON_INCLUDE_DIR=$PREFIX/include/python2.7/                 \
    -DPYTHON_LIBRARY=$PREFIX/lib/libpython2.7.dylib                 \
    -DPYTHON_PACKAGES_PATH=$PREFIX/lib/python2.7/site-packages/     \
    -DCMAKE_INSTALL_PREFIX=$PREFIX                                  \
    -DWITH_CUDA=OFF                                                 \
    -DWITH_AVFOUNDATION=OFF                                         \
    -DWITH_FFMPEG=OFF                                               \
    ..
make
make install
