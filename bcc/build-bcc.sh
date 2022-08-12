#!/bin/bash
# This script should run within a bcc checkout

spath=$( cd "$(dirname "$0")" ; pwd -P )
cd $spath

rm -rf build && mkdir -p build && cd build
cmake ..
make -j4
make install
cd ..
rm -rf build
