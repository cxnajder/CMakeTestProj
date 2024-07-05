@echo on
git submodule update --init --recursive
cmake -S Source -B Build -DGLFW_BUILD_DOCS=OFF -DBUILD_GLFW_APP=ON -DBUILD_GTEST_APP=ON
ninja -C Build
