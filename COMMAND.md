## The Project's Commands



### Formatting The Codes
```bash
ruby format-codes.rb
```



### Get The Code with Shell Commands
```bash
git clone https://github.com/cnruby/w3h1_cmake.git basic_134
cd basic_134
git checkout basic_134
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
./bin/main_134
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
git checkout -b basic_134
git push --set-upstream origin basic_134
git push
exa -T > docs/output/tree.txt
dot -V
doxygen --version
```


### Sphinx
```bash
mkdir api
cd api
sphinx-quickstart
>> enter default values
sphinx-build -b html . _build/
open _build/index.html
```



### Library Components
```bash
code /Applications/CMake.app/Contents/share/cmake-3.17/Modules/FindBoost.cmake 
code /usr/local/include/boost/filesystem.hpp
code /usr/local/include/boost/filesystem/path.hpp
cmake -GNinja -Bbuild/ -H.
cmake --build build/ -v
./bin/main_134


code $HOME/.hunter/_Base/Download/Hunter/0.23.253/88ea6d3/Unpacked/cmake/find/FindBoost.cmake
cmake -GNinja -H./ -Bbuild/ -DHUNTER_STATUS_DEBUG=ON -DCMAKE_BUILD_TYPE=Release
cmake -GNinja -H./ -Bbuild/
cmake -GNinja -Bbuild
```

### basic_134
```
# About Cache Entry with Command
rm -rf build/
cmake -GNinja -H. -Bbuild

cmake --build build/ --target rc
code build/CMakeCache.txt
cmake --help | rg "\-D"
code config/config.hxx
cmake -DCACHE_ENTRY=1 --build build/
cmake -DCACHE_ENTRY=0 --build build/

cmake --build build/ -v
cmake --build build/ --target run

cmake --build build/ --target all_macro -v | rg ALL_TARGET_MACRO
cmake --build build/ --target run -v | rg "\-D"
```