## The Project's Commands



### Formatting The Codes
```bash
ruby format-codes.rb
```



### Get The Code with Shell Commands
```bash
git clone https://github.com/cnruby/w3h1_cmake.git basic_142
cd basic_142
git checkout basic_142
code .
```



### Others 
```bash
md-inc README.md
ruby format-codes.rb
git branch -vv
git checkout -b basic_142
git push --set-upstream origin basic_142
git push
exa -T > docs/output/tree.txt
dot -V
doxygen --version
```



## basic_142
```
rm -rf _* **/_* *_
cmake -GNinja -H. -B_build -DCMAKE_BUILD_TYPE=Debug
ninja -C _build/ get_linuxdeploy
ninja -C _build/
DESTDIR=../_AppDir ninja -C _build install
ninja -C _build package
./_app/main_142-0.1.0-x86_64.AppImage


rm -rf _* **/_* *_
cmake -GNinja -H. -B_build
cmake -DCMAKE_BUILD_TYPE=Release _build
ninja -C _build/ get_linuxdeploy
ninja -C _build/
ninja -C _build install_app
ninja -C _build package
./_app/main_142-0.1.0-x86_64.AppImage

./_app/main_142-0.1.0-x86_64.AppImage --appimage-extract
```