## The Project's Commands



### Formatting The Codes
```bash
ruby format-codes.rb
```



### Get The Code with Shell Commands
```bash
git clone https://github.com/cnruby/w3h1_cmake.git basic_119
cd basic_119
git checkout basic_119
code .
```



### Build and Run The Project
```bash
cmake -GNinja -Bbuild/
cmake --build build/
cmake --build build/ --clean-first
cmake --build build/ --clean-first -v
cmake --build build/ --target clean
cmake --build build/ --clean-first -v &> v11.txt
```



### Build Doxygen Doc
```bash
# generate the configure file
rm -rf config
cmake --build build/ --clean-first
cmake -Bbuild/
cmake --build build/ --target rebuild_cache
cmake --build build/ --clean-first
./bin/main_119
#  update the configure file
cmake --build build/ --clean-first
# others
code build/build.ninja
cmake --check-system-vars --build build/
cmake --help-command find_package | less
```



### Generate Doxygen and Sphinx Doc
```bash
cmake --build build/ --target rebuild_cache

# Where do The Commands for generate docs come from
cmake --build build/ --target help

# generate docs
cmake --build build --target target_doxygen
open build-doc-doxygen/html/index.html
cmake --build build --target target_sphinx
open build-doc-sphinx/_build/index.html
```



### Others 
```bash
markdown-exec README.md
ruby format-codes.rb
git branch -vv
git checkout -b basic_119
exa -T > docs/output/tree.txt
dot -V
doxygen --version
```


### Use Sphinx
```
mkdir api
cd api
sphinx-quickstart
>> enter default values
sphinx-build -b html . _build/
open _build/index.html
```