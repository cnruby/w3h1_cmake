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



### basic_134
```
# CMake Code and C++ Compiler Command
rm -rf build/
cmake -GNinja -H. -Bbuild
cmake --build build/ --target clean
cmake --build build/ --target all -v | rg ALL_TARGET_MACRO
code src/CMakeLists.txt
# TARGET_MAIN_MARCO=200;IS_MAIN
cmake --build build/ --target clean
cmake --build build/ --target all -v | rg IS_MAIN

# CMake Code and C++ Code
rm -rf build/
cmake -GNinja -H. -Bbuild
cmake --build build/ --target run
code CMakeLists.txt
# #add_compile_definitions(
# open new shell
cmake --build build/ --target clean
cmake --build build/ --target run
```