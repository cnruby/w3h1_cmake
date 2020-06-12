# to install executable to Project for Developer
cmake -GNinja -H. -B_build
cmake -DCMAKE_BUILD_TYPE=Debug --build _build
ninja -C _build
ninja -C _build install
./_install/Debug/bin/main_139