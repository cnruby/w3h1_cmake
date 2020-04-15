#!/bin/sh
rm ./bin/main.* ./bin/main_*
read -p "Press [Enter] key to start build..."
echo
# compile
c++  -c ./src/main.cxx -MD -MF ./bin/main.cxx.o.d \
  -o ./bin/main.cxx.o
# link
c++ ./bin/main.cxx.o  -o ./bin/main_112
./bin/main_112
#