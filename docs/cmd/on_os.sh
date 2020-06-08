# to install executable from source to OS for User
cmake -G"Ninja Multi-Config" -H. -B_build
cmake -DCMAKE_DEFAULT_BUILD_TYPE=Release _build

cmake --build _build --target main_140:Release
./_bin/Release/main_140

sudo cmake --build _build --target install:Release
cmake --install _build help
sudo cmake --install _build --config Release
main_140
#sudo ninja -C _build install:Release