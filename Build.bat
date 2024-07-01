@echo on
git submodule update --init --recursive
cmake -D GLFW_BUILD_DOCS=OFF -S Source -B Build
ninja -C Build