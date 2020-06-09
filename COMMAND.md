## The Project's Commands



### Formatting The Codes
```bash
ruby format-codes.rb
```



### Get The Code with Shell Commands
```bash
git clone https://github.com/cnruby/w3h1_cmake.git raw_116
cd raw_116
git checkout raw_116
code .
```



### Others 
```bash
md-inc README.md
ruby format-codes.rb
git branch -vv
git checkout -b raw_116
git push --set-upstream origin raw_116
git push
exa -T > docs/output/tree.txt
dot -V
doxygen --version
```


### raw_116
```bash

rm -rf _*
cmake -GNinja -H. -B_build
ninja -C _build
./_exe/main_116

rm -rf _*
cmake -G"Ninja Multi-Config" -H. -B_build
ninja -C _build
./_exe/Debug/main_116

ninja -C _build help
```