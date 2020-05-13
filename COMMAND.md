## The Project's Commands



### Formatting The Codes
```bash
ruby format-codes.rb
```



### Get The Code with Shell Commands
```bash
git clone https://github.com/cnruby/w3h1_cmake.git basic_130
cd basic_130
git checkout basic_130
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
./bin/main_130
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
git checkout -b basic_130
git push --set-upstream origin basic_130
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
./bin/main_130


code $HOME/.hunter/_Base/Download/Hunter/0.23.253/88ea6d3/Unpacked/cmake/find/FindBoost.cmake
cmake -GNinja -H./ -Bbuild/ -DHUNTER_STATUS_DEBUG=ON -DCMAKE_BUILD_TYPE=Release
cmake -GNinja -H./ -Bbuild/
cmake -GNinja -Bbuild
```

### basic_130
```
cmake --build build/Lib --target rebuild_cache
cmake --build build/Main --target rebuild_cache

# Build completely all projects
cmake -GNinja -H. -Bbuild
cmake --build build/ -v
cmake --build build/
./bin/main_130
rm -rf bin build

# Build the project 'lib_main' in Folder 'Lib'
cmake -GNinja -HLib -Bbuild/Lib
cmake --build build/Lib -v

# Build the project 'cxx_main' in Folder 'Main'
cmake -GNinja -HMain -Bbuild/Main
cmake --build build/Main -v
./bin/main_130
```