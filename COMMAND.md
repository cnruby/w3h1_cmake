## The Project's Commands



### Formatting The Codes
```bash
ruby format-codes.rb
```



### Get The Code with Shell Commands
```bash
git clone https://github.com/cnruby/w3h1_cmake.git basic_137
cd basic_137
git checkout basic_137
code .
```



### Others 
```bash
markdown-exec README.md
ruby format-codes.rb
git branch -vv
git checkout -b basic_137
git push --set-upstream origin basic_137
git push
exa -T > docs/output/tree.txt
dot -V
doxygen --version
```


### basic_137
```bash
cmake -GNinja -H. -Bbuild
cd build
# build the library
ninja lib_137_a -v
ninja clean
ninja help | rg "_o"
ninja lib_137_o -v
ninja lib_137_ar -v





# build the main
ninja main_137_o -v | rg "\-D"
ninja main_137_three -v | rg "\-D"
ninja run
# comment src/three.cmake
ninja clean
ninja run





# compare the one and three commands
cd build
ninja clean
ninja main_137_one -v &> v1.txt
ninja main_137_o -v &> v3.txt
ninja main_137_three -v >> v3.txt
```