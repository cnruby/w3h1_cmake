## The Project's Commands



### Formatting The Codes
```bash
ruby format-codes.rb
```



### Get The Code with Shell Commands
```bash
git clone https://github.com/cnruby/w3h1_cmake.git basic_145
cd basic_145
git checkout basic_145
code .
```



### Others 
```bash
md-inc README.md
ruby format-codes.rb
git branch -vv
git checkout -b basic_145
git push --set-upstream origin basic_145
# add ...
git push
exa -T > docs/output/tree.txt
dot -V
doxygen --version
```



## basic_145
```
rm -rf _* **/_* *_
cmake -GNinja -H. -B_build 
cmake -DCMAKE_BUILD_TYPE=Release _build
ninja -C _build/
./_bin/main_145
ninja -C _build install_app
ninja -C _build/ get_linuxdeploy
ninja -C _build package
./_app/main_145-0.145.1-x86_64.AppImage
ninja -C _build/ get_ghr
ninja -C _build github_release
```