# Where are The 'CMake' Commands from?
- basic_104



#### TABLE of CONTENTS

  - [1 Prerequisite](#1-prerequisite)
  - [2 What are the types of The 'CMake' Command?](#2-what-are-the-types-of-the-cmake-command)
  - [3 How to Use the 'CMake' Command?](#3-how-to-use-the-cmake-command)
  - [4 Where are The 'CMake' Commands from?](#4-where-are-the-cmake-commands-from)
    - [4.1 Get The Project](#41-get-the-project)
    - [4.2 Create and Build](#42-create-and-build)
    - [4.3 Show the 'CMake' Command Help](#43-show-the-cmake-command-help)
    - [4.4 Search the 'CMake' Command by Help](#44-search-the-cmake-command-by-help)
    - [4.5 Show the 'CMake' Command Other Helps](#45-show-the-cmake-command-other-helps)
    - [4.6 Show the 'CMake' Command with Build Helps](#46-show-the-cmake-command-with-build-helps)
  - [5 General Commands](#5-general-commands)
    - [5.1 Commands with '--build'](#51-commands-with---build)
    - [5.2 Commands with 'config'](#52-commands-with-config)



## 1 Prerequisite
- [VS Code](https://code.visualstudio.com/)
- [CMake](https://cmake.org/)
- [ripgrep](https://github.com/BurntSushi/ripgrep), optional
- Install 'ripgrep'
```bash
### install rust
# run the follow command if you install not rust
curl --proto '=https' --tlsv1.2 -sSf \
https://sh.rustup.rs | sh
# select 1 and enter
# open new terminal
### end install rust
### install ripgrep
cargo install ripgrep
### end install ripgrep
```



## 2 What are the types of The 'CMake' Command?
- From a software perspective, two broad categories of CMake and Generator commands
- From a functional perspective, several general types of commands, such as create generator, build and install program



## 3 How to Use the 'CMake' Command?



![image](docs/104/how/how.png)



![image](docs/104/how-example/how-example.png)



## 4 Where are The 'CMake' Commands from?



### 4.1 Get The Project
```bash
git clone https://github.com/cnruby/w3h1_cmake.git basic_104
cd basic_104
git checkout basic_104
```



### 4.2 Create and Build
```bash
cmake -GNinja -Bbuild/
cmake --build build/ --verbose
```



### 4.3 Show the 'CMake' Command Help
```bash
cmake --help | more
```



### 4.4 Search the 'CMake' Command by Help
```bash
# cmake -B build/ -G Ninja
cmake --help | rg '\-B'
cmake --help | rg '\-G'
```

```bash
# cmake --build build/ --verbose
cmake --help | rg '\-\-build'
cmake --help | rg '\-\-verbose'
```



### 4.5 Show the 'CMake' Command Other Helps
```bash
cmake --help | rg '\-E'
cmake -E
cmake --install
cmake --build
```

```bash
# common command
# Build target 'clean' first, then build.
# cmake --build build/ --target clean
# cmake --build build/
cmake --build build/ --clean-first
```



###  4.6 Show the 'CMake' Command with Build Helps
```bash
# cmake --build build/ --target clean
## help??
cmake --build build/ --target
# build tasks
cmake --build build/ --target help
# generator usage help
cmake --build build/ --target --help
```



## 5 General Commands



### 5.1 Commands with '--build'
```bash
cmake --build build/
cmake --build build/ -j 4
cmake --build build/ --clean-first -j 4
cmake --build build/ --verbose --clean-first -j 4
cmake --build build/ --target all
cmake --build build/ --clean-first --verbose
```



### 5.2 Commands with 'config'
```bash
#  None Debug Release RelWithDebInfo MinSizeRel ...
ccmake build/ -DCMAKE_BUILD_TYPE=MinSizeRel
cmake build/ -DCMAKE_BUILD_TYPE=RelWithDebInfo
cmake build/ -DCMAKE_VERBOSE_MAKEFILE=ON
```