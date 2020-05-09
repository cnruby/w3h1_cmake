## The Project's Commands



### Formatting The Codes
```bash
ruby format-codes.rb
```



### Get The Code with Shell Commands
```bash
git clone https://github.com/cnruby/w3h1_cmake.git basic_128
cd basic_128
git checkout basic_128
code .
```



### Build and Run The Project
```bash
cmake -GNinja -Bbuild/ -H.
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
./bin/main_120
#  update the configure file
cmake --build build/ --clean-first
# others
code build/build.ninja
cmake --check-system-vars --build build/
cmake --help-command find_package | less
```



### Generate Doxygen Doc
```bash
# Where do The Commands for generate docs come from
cmake --build build/ --target help
cmake --build build/ --target rebuild_cache


# generate docs
cmake --build build/ --target help
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
git checkout -b basic_128
git push --set-upstream origin basic_128
git push
exa -T > docs/output/tree.txt
dot -V
doxygen --version
echo "${PATH//:/$'\n'}"
cmake -DCMAKE_FIND_DEBUG_MODE=ON build/
cmake -D CMAKE_FIND_DEBUG_MODE=ON -GNinja -Bbuild/ -H.
```


### Sphinx
```
mkdir api
cd api
sphinx-quickstart
>> enter default values
sphinx-build -b html . _build/
open _build/index.html
```


### basic_128
```bash
cmake -D CMAKE_FIND_DEBUG_MODE=ON -GNinja -Bbuild/ -H.
cmake -GNinja -Bbuild/ -DFMT_HAS_VARIANT=OFF -DHAS_NULLPTR_WARNING=OFF
cmake -GNinja -Bbuild/
cmake --build build/
cmake --build build/ -v --clean-first
./bin/main_128
# include(cmake/GitFMT.cmake)
cmake --build build/ -v --clean-first
./bin/main_128

ls -l usr/local/lib/libfmt.a
```