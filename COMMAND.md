## The Project's Commands



### Formatting The Codes
```bash
ruby format-codes.rb
```



### Get The Code with Shell Commands
```bash
git clone https://github.com/cnruby/w3h1_cmake.git basic_127
cd basic_127
git checkout basic_127
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
git checkout -b basic_127
git push --set-upstream origin basic_127
git push
exa -T > docs/output/tree.txt
dot -V
doxygen --version
echo "${PATH//:/$'\n'}"
cmake -D CMAKE_FIND_DEBUG_MODE=ON build/
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


### basic_127
```bash
code /Applications/CMake.app/Contents/share/cmake-3.17/Modules/FindIntl.cmake 
code /Applications/CMake.app/Contents/share/cmake-3.17/Modules/FindGettext.cmake 
chmod +x ./shell/*.sh
cmake -D CMAKE_FIND_DEBUG_MODE=ON -GNinja -Bbuild/

cat ./shell/ls_opt.sh && ./shell/ls_opt.sh
cat ./shell/ls_local.sh && ./shell/ls_local.sh
cmake -GNinja -Bbuild/

cat ./shell/ln_gettext_short.sh && ./shell/ln_gettext_short.sh
cat ./shell/ls_local.sh && ./shell/ls_local.sh
cmake -GNinja -Bbuild/
cmake --build build/
locale
locale -a | rg de_DE
./bin/main_127

./shell/rm_include_short.sh 
./shell/rm_lib_short.sh
```