#!/bin/sh
git submodule update --init --recursive
cmake -S Source -B Build -DGLFW_BUILD_DOCS=OFF -DGLFW_BUILD_WAYLAND=OFF -DGLFW_BUILD_X11=OFF -DBUILD_GLFW_APP=ON -DBUILD_GTEST_APP=ON
make -C Build
