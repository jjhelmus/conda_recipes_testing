#!/bin/bash

mkdir $PREFIX/share
mkdir $PREFIX/share/gdal
cp data/* $PREFIX/share/gdal
cp LICENSE.TXT $PREFIX/share/gdal
mkdir $PREFIX/bin    # HACK to get post-link script to copy.
