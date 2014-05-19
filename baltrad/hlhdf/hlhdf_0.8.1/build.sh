#!/bin/bash

mkdir $PREFIX/baltrad
chmod +x configure
./configure  \
    --prefix=$PREFIX/baltrad/hlhdf \
    --with-hdf5=$PREFIX/include,$PREFIX/lib
make
make test
make install

# fix absolute paths, make into relative paths
cd $PREFIX/baltrad/hlhdf
rm bin
rm include
rm lib
rm mkf
ln -s default/bin bin
ln -s default/include include
ln -s default/lib lib
ln -s default/mkf mkf

# move .pth file into site-package directory
export PY_LIB_DIR=`python -c "import distutils.sysconfig; print distutils.sysconfig.get_python_lib()"`
mv $PREFIX/baltrad/hlhdf/hlhdf.pth $PY_LIB_DIR/hlhdf.pth
