## The Project's Commands



### Formatting The Codes
```bash
ruby format-codes.rb
```



### Get The Code with Shell Commands
```bash
git clone https://github.com/cnruby/w3h1_cmake.git basic_141
cd basic_141
git checkout basic_141
code .
```



### Others 
```bash
md-inc README.md
ruby format-codes.rb
git branch -vv
git checkout -b basic_141
git push --set-upstream origin basic_141
git push
exa -T > docs/output/tree.txt
dot -V
doxygen --version
```



## basic_141
```
rm -rf _*
cmake -GNinja -H. -B_build


# For Debug
cmake -DCMAKE_BUILD_TYPE=Debug _build
cmake -UCMAKE_INSTALL_PREFIX _build
ninja -C _build
DESTDIR=../ ninja -C _build install
_install/Debug/bin/main_141


# For Release
cmake -DCMAKE_BUILD_TYPE=Release _build
cmake -UCMAKE_INSTALL_PREFIX _build
ninja -C _build
DESTDIR=../ ninja -C _build install


# use custom target `install_app` with Debug
rm -rf _install
cmake -DCMAKE_BUILD_TYPE=Debug -UDESTDIR -UCMAKE_INSTALL_PREFIX _build
ninja -C _build
ninja -C _build install_app
./_install/Debug/bin/main_141


# use custom target `install_app` with Release
cmake -DCMAKE_BUILD_TYPE=Release -UDESTDIR -UCMAKE_INSTALL_PREFIX _build
ninja -C _build
ninja -C _build install_app
./_install/Release/bin/main_141


ninja -C _build rc
ninja -C _build ge
```