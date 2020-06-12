# without custom install
cmake -GNinja -H. -B_build

# For Debug
cmake -DCMAKE_BUILD_TYPE=Debug -UCMAKE_INSTALL_PREFIX _build
ninja -C _build
DESTDIR=../ ninja -C _build install

# For Release
cmake -DCMAKE_BUILD_TYPE=Release -UCMAKE_INSTALL_PREFIX _build
ninja -C _build
DESTDIR=../ ninja -C _build install
