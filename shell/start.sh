#!/bin/bash
rm ./bin/main.* ./bin/main_*
read -p "Press [Enter] key to start build..."
echo
./shell/cl.sh
./bin/main_112
#