#!/bin/sh
git submodule update --init --recursive
cmake -D GLFW_BUILD_DOCS=OFF -S Source -B Build
make -C Build