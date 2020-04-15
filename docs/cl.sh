#!/bin/bash
# compile
c++  -c ./src/main.cxx -MD -MF ./bin/main.cxx.o.d \
  -o ./bin/main.cxx.o
# link
c++ ./bin/main.cxx.o  -o ./bin/main_112
#