<h1>CMake's Scripting Language for Building Systems</h1> "basic_106"



<h2>TABLE of CONTENTS</h2>

- [Requirements](#requirements)
- [How do We Write a CMake's Script Code?](#how-do-we-write-a-cmakes-script-code)
- [Apply CMake's Scripting Language for Building Systems](#apply-cmakes-scripting-language-for-building-systems)
  - [How to Split a 'CMakeLists.txt' into Multiple CMake's Files](#how-to-split-a-cmakeliststxt-into-multiple-cmakes-files)
  - [A Project with Single CMake's 'CMakeLists.txt'](#a-project-with-single-cmakes-cmakeliststxt)
  - [A Project with Multiple CMake's Files](#a-project-with-multiple-cmakes-files)
  - [How to Execute these CMake's Files with Order?](#how-to-execute-these-cmakes-files-with-order)
  - [What types of callable files exist?](#what-types-of-callable-files-exist)
- [References](#references)



## Requirements
- [VS Code 1.43.0+](https://code.visualstudio.com/)
- [CMake 3.17.0+](https://cmake.org/)
- [VS Code Extension "CMake Tool"](https://marketplace.visualstudio.com/items?itemName=ms-vscode.cmake-tools) 
- [VS Code Extension "CMake"](https://marketplace.visualstudio.com/items?itemName=twxs.cmake)



## How do We Write a CMake's Script Code?
```bash
# help
#cmake --help | grep "\-P"
cmake --help | rg "\-P"
# script code 'hello.cmake'
cat hello.cmake
cmake -P hello.cmake
# script code 'CxxVersion.cmake'
cat cmake/CxxVersion.cmake
cmake -P cmake/CxxVersion.cmake
code docs/images/script_codes.gif
```



- ![image](docs/106/images/script_codes.gif)



## Apply CMake's Scripting Language for Building Systems



### How to Split a 'CMakeLists.txt' into Multiple CMake's Files
- ![image](docs/106/images/split_codes.png)



### A Project with Single CMake's 'CMakeLists.txt'
```bash
git clone https://github.com/cnruby/w3h1_cmake.git basic_106
cd basic_106
git checkout basic_101
# exa -T >> tree_basic_101.txt
cmake -GNinja -Bbuild/
cmake --build build/
./bin/main
open CMakeLists.txt
```



![image](docs/106/where/where.png)



### A Project with Multiple CMake's Files
```bash
git checkout basic_106
# exa -T >> tree_basic_106.txt

cmake -GNinja -Bbuild/
cmake --build build/
./bin/main
open CMakeLists.txt
```



### How to Execute these CMake's Files with Order?
- ![image](docs/106/how/how.png)



### What types of callable files exist?
- ![image](docs/106/what/what.png)



## References
- https://cliutils.gitlab.io/modern-cmake/chapters/basics/structure.html
- https://stackoverflow.com/questions/22804287/cmake-file-structure-how-to-split-a-cmakelists-txt-into-multiple-files
- https://stackoverflow.com/questions/46395032/cmake-library-with-multiple-projects
- https://github.com/aosp-mirror/platform_external_dbus/tree/master/cmake
- https://preshing.com/20170522/learn-cmakes-scripting-language-in-15-minutes/