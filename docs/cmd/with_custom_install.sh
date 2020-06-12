# with custom install
cmake -GNinja -H. -B_build

# use custom target `install_app` with Debug
cmake -DCMAKE_BUILD_TYPE=Debug -UCMAKE_INSTALL_PREFIX _build
ninja -C _build
ninja -C _build install_app

# use custom target `install_app` with Release
cmake -DCMAKE_BUILD_TYPE=Release -UCMAKE_INSTALL_PREFIX _build
ninja -C _build
ninja -C _build install_app