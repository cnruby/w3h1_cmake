## The Project's Commands



### Formatting The Codes
```bash
ruby format-codes.rb
```



### Get The Code with Shell Commands
```bash
git clone https://github.com/cnruby/w3h1_cmake.git basic_136
cd basic_136
git checkout basic_136
code .
```



### Build and Run The Project
```bash
cmake -GNinja -H. -Bbuild/
cmake --build build/
cmake --build build/ --clean-first
cmake --build build/ --clean-first -v
cmake --build build/ --target clean
cmake --build build/ --clean-first -v &> v11.txt
```



### basic_136
```bash
＃ FOR MacOS
../get_project.sh 124 136
git checkout basic_136

export LANG=de_DE.UTF-8 && cmake -GNinja -H. -Bbuild/
cmake --build build/
./bin/apt_main_136
./bin/debconf_main_136
./bin/git_main_136

＃ FOR Ubuntu
./get_project.sh 124 136
git checkout basic_136


export LANG=de_DE.UTF-8 && cmake -GNinja -H. -Bbuild/
cmake --build build/
./bin/apt_main_136
LC_ALL=de_DE.utf8 ./bin/apt_main_136
LC_ALL=de_DE.utf8 ./bin/debconf_main_136
LC_ALL=de_DE.utf8 ./bin/git_main_136
```

```bash
# How can I build multiple targets using cmake
locale
locale -a
export LANG=de_DE.UTF-8 && cmake -GNinja -H. -Bbuild/
cmake --build build/
./bin/apt_main_136
LC_ALL=de_DE.utf8 ./bin/apt_main_136
LC_ALL=de_DE.utf8 ./bin/debconf_main_136
LC_ALL=de_DE.utf8 ./bin/git_main_136
export LANG=zh_CN.UTF-8
export LANG=zh_CN.UTF-8 && cmake --build build/ --target rebuild_cache
cmake --build build/
LC_ALL=zh_CN.utf8 ./bin/apt_main_136
LC_ALL=zh_CN.utf8 ./bin/debconf_main_136

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
git checkout -b basic_136
git push --set-upstream origin basic_136
git push
exa -T > docs/output/tree.txt
dot -V
doxygen --version
```