#!/bin/sh
git submodule update --init --recursive
cmake -S Source -B Build -DGLFW_BUILD_DOCS=OFF 
make -C Build