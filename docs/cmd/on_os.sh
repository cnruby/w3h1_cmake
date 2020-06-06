# to install executable from source to OS for User
cmake -GNinja -H. -B_build
ninja -C _build
sudo ninja -C _build install
main_139