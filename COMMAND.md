## The Project's Commands



### Formatting The Codes
```bash
ruby format-codes.rb
```



### Get The Code with Shell Commands
```bash
git clone https://github.com/cnruby/w3h1_cmake.git basic_140
cd basic_140
git checkout basic_140
code .
```



### Others 
```bash
md-inc README.md
ruby format-codes.rb
git branch -vv
git checkout -b basic_140
git push --set-upstream origin basic_140
git push
exa -T > docs/output/tree.txt
dot -V
doxygen --version
```


### basic_140
```bash

rm -rf _*
cmake -G"Ninja Multi-Config" -H. -B_build
ninja -C _build
ninja -C _build help

# on Project
cmake -DCMAKE_DEFAULT_BUILD_TYPE=Debug _build
ninja -C _build main_140:Debug
./_bin/Debug/main_140
ninja -C _build install:Debug
./_install/Debug/bin/main_140

# on OS
cmake -DCMAKE_DEFAULT_BUILD_TYPE=Release _build
ninja -C _build main_140:Release
./_bin/Release/main_140
cmake --build _build --target install:Release
sudo cmake --build _build --target install:Release
cmake --install _build help
cmake --install _build --config Release
sudo cmake --install _build --config Release
main_140
# sudo ninja -C _build install:Release
sudo rm /usr/local/bin/main_140
```