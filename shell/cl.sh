#!/bin/bash
#[1/4]: Compile
c++ -I./lib -MD -MF ./bin/main.cxx.o.d  -c ./src/main.cxx \
  -o ./bin/main.cxx.o
#[2/4]: Compile
c++ -I./lib -MD -MF ./bin/header.cxx.o.d  -c ./lib/header.cxx \
  -o ./bin/header.cxx.o
#[3/4]: Package
cmake -E rm -f ./bin/liblib_113.a && \
  ar qc ./bin/liblib_113.a ./bin/header.cxx.o && \
  ranlib ./bin/liblib_113.a && cmake -E touch ./bin/liblib_113.a
#[4/4] : Link
c++ ./bin/main.cxx.o  -o ./bin/main_113  ./bin/liblib_113.a
#