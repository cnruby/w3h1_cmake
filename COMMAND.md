## The Project's Commands



### Formatting The Codes
```bash
ruby format-codes.rb
```



### Get The Code with Shell Commands
```bash
git clone https://github.com/cnruby/w3h1_cmake.git basic_135
cd basic_135
git checkout basic_135
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



### basic_135
```bash
cmake -GNinja -H. -Bbuild/
cmake --build build/
./bin/main_135
```


### Others 
```bash
markdown-exec README.md
ruby format-codes.rb
git branch -vv
git checkout -b basic_135
git push --set-upstream origin basic_135
git push
exa -T > docs/output/tree.txt
dot -V
doxygen --version
```