## The Project's Commands



### Formatting The Codes
```bash
ruby format-codes.rb
```



### Get The Code with Shell Commands
```bash
git clone https://github.com/cnruby/w3h1_cmake.git basic_126
cd basic_126
git checkout basic_126
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



### Sphinx
```
mkdir api
cd api
sphinx-quickstart
>> enter default values
sphinx-build -b html . _build/
open _build/index.html
```


### gettext
```bash
code /Applications/CMake.app/Contents/share/cmake-3.17/Modules/FindIntl.cmake 
code /Applications/CMake.app/Contents/share/cmake-3.17/Modules/FindGettext.cmake 
cmake -GNinja -Bbuild/
cmake --build build/
locale
./bin/main_124
export LANG=zh_CN.UTF-8
./bin/main_124
export LANG=de_DE.UTF-8
cmake --build build/ --target rebuild_cache
cmake --build build/
./bin/main_124

#FOR APPLE
ls /usr/local/share/locale/de/LC_MESSAGES/
#FOR UBUNTU
ls /usr/share/locale/de/LC_MESSAGES/ 

cmake --help | rg variable
cmake --help-variable PROJECT_SOURCE_DIR
cmake --help-variable Intl_INCLUDE_DIR
cmake --help-module FindIntl | rg Intl_INCLUDE_DIR

# CMake Variables
cmake --help-variable-list | grep PROJECT_SOURCE_DIR
# Module Variables
cmake --help-variable-list | grep Intl_LIBRARIES
```


### basic_124
```bash
# How can I build multiple targets using cmake
locale
locale -a
export LANG=de_DE.UTF-8 && cmake -GNinja -Bbuild/
cmake --build build/
./bin/apt_main_124
LC_ALL=de_DE.utf8 ./bin/apt_main_124
LC_ALL=de_DE.utf8 ./bin/debconf_main_124
export LANG=zh_CN.UTF-8
export LANG=zh_CN.UTF-8 && cmake --build build/ --target rebuild_cache
cmake --build build/
LC_ALL=zh_CN.utf8 ./bin/apt_main_124
LC_ALL=zh_CN.utf8 ./bin/debconf_main_124

cmake -Bbuild -DENABLE_TARGETS="git_main_124"
cmake --build build --target enabled_targets
cmake --build build --target apt_main_124
cmake --build build --target debconf_main_124

sudo v /etc/apt/sources.list
sudo apt-get update
sudo apt-get install -y language-pack-de
sudo apt-get install -y language-pack-zh-hans
sudo apt-get install -y language-pack-zh-hant

ls /usr/share/locale/de/LC_MESSAGES/
```



### Others 
```bash
markdown-exec README.md
ruby format-codes.rb
git branch -vv
git checkout -b basic_124
git push --set-upstream origin basic_124
git push
exa -T > docs/output/tree.txt
dot -V
doxygen --version
```



### basic_126
```bash
uname -a
sw_vers
lsb_release -a
cat ./get_project.sh
./get_project.sh basic_126
cmake -GNinja -Bbuild/
cmake --build build/
./bin/os_main_126
./bin/brew_main_126
```