# to install executable to Project for Developer
cmake -G"Ninja Multi-Config" -H. -B_build
cmake -DCMAKE_BUILD_TYPE=Debug --build _build

ninja -C _build main_140:Debug
./_bin/Debug/main_140

ninja -C _build install:Debug
./_install/Debug/bin/main_140