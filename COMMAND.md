## The Project's Commands



### Formatting The Codes
```bash
ruby format-codes.rb
```



### Get The Code with Shell Commands
```bash
git clone https://github.com/cnruby/w3h1_cmake.git basic_138
cd basic_138
git checkout basic_138
code .
```



### Others 
```bash
md-inc README.md
ruby format-codes.rb
git branch -vv
git checkout -b basic_138
git push --set-upstream origin basic_138
# add 
git push
exa -T > docs/output/tree.txt
dot -V
doxygen --version
```


### basic_138
```bash
cmake -GNinja -H. -Bbuild
cd build && ninja
cd build && ninja help
cd build && ninja run

cd build
ninja clean
ninja v1_main_138 -v &> v1.txt
ninja v2_main_138 -v &> v2.txt
ninja v3_main_138 -v &> v3.txt
```