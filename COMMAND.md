## The Project's Commands



### Formatting The Codes
```bash
ruby format-codes.rb
```



### Get The Code with Shell Commands
```bash
git clone https://github.com/cnruby/w3h1_cmake.git basic_133
cd basic_133
git checkout basic_133
code .
```



### Others 
```bash
markdown-exec README.md
ruby format-codes.rb
git branch -vv
git checkout -b basic_133
git push --set-upstream origin basic_133
# add
git push
exa -T > docs/output/tree.txt
dot -V
doxygen --version
```



### basic_133
```
# check CMake
cmake --version
cmake --help | rg "Ninja Multi-Config"

# create Ninja Multi-Config generator
rm -rf build/ bin/
cmake -G"Ninja Multi-Config" -H. -Bbuild/
cd build
ninja run:Release
clear

# use CMAKE_CONFIGURATION_TYPES 
# -D CMAKE_CONFIGURATION_TYPES="Debug;Release;RelWithDebInfo"
ninja run:MinSizeRel
# ERROR
clear
ls -l build-*.ninja
exa -T ../bin
cmake .. -DCMAKE_CONFIGURATION_TYPES="Debug;Release;RelWithDebInfo;MinSizeRel"
ls -l build-*.ninja
exa -T ../bin
clear
ninja run:Release
cd .. && rm -rf build/ bin/
cmake -G"Ninja Multi-Config" -H. -Bbuild/
cd build && clear

# -D CMAKE_DEFAULT_BUILD_TYPE="Release"
ninja clean:all
ninja main_133:Release -v &> 0-r.txt && bat 0-r.txt
ninja clean:all
ninja -f build-Release.ninja main_133:Release -v &> r-r.txt && bat r-r.txt
cmake -E compare_files r-r.txt 0-r.txt
clear
ninja run:Release


# -D CMAKE_CONFIGURATION_TYPES="Debug;Release;RelWithDebInfo"
# -D CMAKE_CROSS_CONFIGS="all"
# -D CMAKE_DEFAULT_CONFIGS="Debug;Release"
ninja clean:all
exa -T ../bin
ninja all -v &> all-0.txt && bat all-0.txt
ninja clean:all && clear
ninja all:Debug -v > all-2.txt && bat all-2.txt
ninja all:Release -v >> all-2.txt && bat all-2.txt
clear
cmake -E compare_files all-0.txt all-2.txt
# vs code compare
# change line position and numbers
# save
cmake -E compare_files all-0.txt all-2.txt
# "ninja all" = "ninja all:Debug" + "all:Release"
ninja run:Release

# -D CMAKE_CONFIGURATION_TYPES="Debug;Release;RelWithDebInfo"
# -D CMAKE_CROSS_CONFIGS="all"
ninja run:RelWithDebInfo
cmake .. -DCMAKE_CROSS_CONFIGS="Debug;Release"
ninja run:RelWithDebInfo
#ERROR
cmake .. -DCMAKE_CROSS_CONFIGS="all"
# "ninja all:all" = "ninja all:Debug" + "all:Release" + "all:RelWithDebInfo"
ninja clean:all
ninja all:all -v &> all-all.txt && bat all-all.txt
ninja clean:all
ninja all:Debug -v &> all-x.txt && bat all-x.txt
ninja all:Release -v >> all-x.txt && bat all-x.txt
ninja all:RelWithDebInfo -v >> all-x.txt && bat all-x.txt
cmake -E compare_files all-all.txt all-x.txt
change line position and numbers
cmake -E compare_files all-all.txt all-x.txt
ninja run:Release
cmake .. -DCMAKE_CROSS_CONFIGS="all"


# ninja tool browse
cmake -G"Ninja Multi-Config" -H. -Bbuild/
cd build
# open new shell
ninja -t browse -p 8888 all:all
# http://localhost:8888/?all:all
# change to browse and refresh
# go to shell
cmake .. -DCMAKE_CROSS_CONFIGS="Debug;Release"
# change to browse and refresh
# go to shell
cmake .. -DCMAKE_CROSS_CONFIGS="all"
# change to browse and refresh


# other 1
cmake --build ../build/ --target rebuild_cache
cmake  -UCMAKE_CONFIGURATION_TYPES -UCMAKE_CROSS_CONFIGS  --build build/

rm -rf build/ bin/
cmake -G"Ninja Multi-Config" -H. -Bbuild/
cd build
ninja -t browse -p 65535 all:all
cd build
ninja main_133 -v
ninja run -v
cmake -DCMAKE_DEFAULT_BUILD_TYPE=Release ..
ninja clean:all
ninja -f build.ninja main_133
ninja -f build-Debug.ninja main_133
ninja -f build-Release.ninja main_133
cmake --build ../build/ --config Debug --target main_133 --clean-first -v
cmake --build ../build/ --config Release --target main_133 --clean-first -v
cmake --build ../build/ --target main_133 --clean-first -v
ninja -f build-Release.ninja main_133:Debug -v
ninja -f build-Debug.ninja main_133:Release -v
ninja -f build-Release.ninja main_133:Release -v
cmake --build ../build/ --config Release --target main_133:Debug
ninja run -v

# other 2
rm -rf build/ bin/
cmake -G"Ninja Multi-Config" -H. -Bbuild/
# open new shell
cd build
ninja -t browse -p 65535 all:all
# opne new shell
cd build
ninja main_133 -v
ninja run -v


#===================
ninja help | rg all:Debug
ninja all:Debug all:Release

cmake --build build/ -v
cmake --build build/ --config Debug
cmake --build build/ --config Release
cmake --build build/ --config RelWithDebInfo
./bin/Debug/main_133
rm -rf bin build


cmake -G"Ninja Multi-Config" -H. -Bbuild/ \
  -DCMAKE_CONFIGURATION_TYPES="Debug;Release;RelWitDebInfo;MinSizeRel" \
  -DCMAKE_CROSS_CONFIGS="all" \
  -DCMAKE_DEFAULT_CONFIGS="all" \
  -DCMAKE_DEFAULT_BUILD_TYPE="Release"

cmake -G"Ninja Multi-Config" -H. -Bbuild/ \
  -DCMAKE_DEFAULT_CONFIGS="all" \
  -DCMAKE_DEFAULT_BUILD_TYPE="Release"

cmake -G"Ninja Multi-Config" -H. -Bbuild/ \
  -DCMAKE_DEFAULT_CONFIGS="Debug;Release" \
  -DCMAKE_DEFAULT_BUILD_TYPE="Release"

```



### install camke latest version on Ubuntu for basic_133 
```
# uninstall current version
# https://askubuntu.com/questions/1143/how-can-i-uninstall-software
sudo apt remove cmake && sudo apt-get autoremove

# install latest version
# https://askubuntu.com/questions/355565/how-do-i-install-the-latest-version-of-cmake-from-the-command-line
# https://cmake.org/download/

version=3.17 && build=2
mkdir ~/temp && cd ~/temp
wget https://cmake.org/files/v$version/cmake-$version.$build-Linux-x86_64.sh
ls cmake-$version.$build-Linux-x86_64.sh
sudo mkdir /opt/cmake
sudo sh cmake-$version.$build-Linux-x86_64.sh --prefix=/opt/cmake
ls /opt/cmake/cmake-$version.$build-Linux-x86_64/bin/
sudo ln -s /opt/cmake/cmake-$version.$build-Linux-x86_64/bin/cmake /usr/bin/cmake
sudo ln -s /opt/cmake/cmake-$version.$build-Linux-x86_64/bin/ccmake /usr/bin/ccmake
sudo ln -s /opt/cmake/cmake-$version.$build-Linux-x86_64/bin/cpack /usr/bin/cpack
sudo ln -s /opt/cmake/cmake-$version.$build-Linux-x86_64/bin/ctest /usr/bin/ctest
cmake --version
```