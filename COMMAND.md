## The Project's Commands



### Formatting The Codes
```bash
ruby format-codes.rb
```



### Get The Code with Shell Commands
```bash
git clone https://github.com/cnruby/w3h1_cmake.git basic_139
cd basic_139
git checkout basic_139
code .
```



### Others 
```bash
md-inc README.md
ruby format-codes.rb
git branch -vv
git checkout -b basic_139
git push --set-upstream origin basic_139
git push
exa -T > docs/output/tree.txt
dot -V
doxygen --version
```



## basic_139
```
rm -rf _*
cmake -GNinja -H. -B_build

# on Project
cmake -DCMAKE_BUILD_TYPE=Debug _build
ninja -C _build
./_bin/main_139
cmake --install _build
./_install/Debug/bin/main_139
rm ./_install/Debug/bin/main_139
cmake --build _build --target install
./_install/Debug/bin/main_139
rm ./_install/Debug/bin/main_139
ninja -C _build install
./_install/Debug/bin/main_139

# on OS
cmake -DCMAKE_BUILD_TYPE=Release _build
ninja -C _build
sudo ninja -C _build install
main_139
sudo rm /usr/local/bin/main_139

cmake -DCMAKE_INSTALL_PREFIX=$HOME/cpp-ws/139_basic/_install/Release _build
cmake --install _build
ninja -C _build install
./_install/Release/bin/main_139

ninja -C _build rc
ninja -C _build ge
```