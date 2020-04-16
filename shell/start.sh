#!/bin/bash
rm -rf ./build ./bin/* 
read -p "Press [Enter] key to start build..."
echo
./shell/cl.sh
./bin/main_113
#