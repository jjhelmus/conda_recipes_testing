#!/bin/bash

export GRIBAPI_DIR=$PREFIX
export JASPER_DIR=$PREFIX
$PYTHON setup.py install
$PYTHON test.py
