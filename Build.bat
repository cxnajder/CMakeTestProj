@echo on
git submodule update --init --recursive
cmake -S Source -B Build -DGLFW_BUILD_DOCS=OFF
ninja -C Build