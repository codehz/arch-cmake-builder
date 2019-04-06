#!/bin/bash
set -ex

mkdir -p build dist
base_path=$(pwd)
git submodule update --init --recursive
cd build
eval $* cmake -DCMAKE_INSTALL_PREFIX:PATH="$base_path/dist" -DCMAKE_BUILD_TYPE=MinSizeRel ..
make
make install
