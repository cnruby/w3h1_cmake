# Where are The 'CMake' Commands from?
- basic_104



##### TABLE of CONTENTS

  - [Prerequisite](#prerequisite)
  - [What does The 'CMake' Command?](#what-does-the-cmake-command)
  - [Where are The 'CMake' Commands from?](#where-are-the-cmake-commands-from)
    - [Get The Project](#get-the-project)
    - [Create and Build](#create-and-build)
    - [Show the 'CMake' Command Help](#show-the-cmake-command-help)
    - [Search the 'CMake' Command by Help](#search-the-cmake-command-by-help)
    - [Show the 'CMake' Command Other Helps](#show-the-cmake-command-other-helps)
    - [Show the 'CMake' Command with Build Helps](#show-the-cmake-command-with-build-helps)
  - [Commands with '--build'](#commands-with---build)
  - [Commands with 'config'](#commands-with-config)



## Prerequisite
- [VS Code](https://code.visualstudio.com/)
- [CMake](https://cmake.org/)
- [ripgrep](https://github.com/BurntSushi/ripgrep)
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



# What does The 'CMake' Command?



![image](docs/104/what/what.png)



![image](docs/104/what-example/what-example.png)



# Where are The 'CMake' Commands from?



### Get The Project
```bash
git clone https://github.com/cnruby/w3h1_cmake.git basic_104
cd basic_104
git checkout basic_104
```



### Create and Build
```bash
cmake -GNinja -Bbuild/
cmake --build build/ --verbose
```



### Show the 'CMake' Command Help
```bash
cmake --help
```



### Search the 'CMake' Command by Help
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



### Show the 'CMake' Command Other Helps
```bash
cmake --build
cmake -E
cmake --install
```

```bash
# common command
# Build target 'clean' first, then build.
# cmake --build build/ --target clean
# cmake --build build/
cmake --build build/ --clean-first
```



### Show the 'CMake' Command with Build Helps
```bash
# cmake --build build/ --target clean
## help??
cmake --build build/ --target
# build tasks
cmake --build build/ --target help
# generator usage help
cmake --build build/ --target --help
```



## Commands with '--build'
```bash
cmake --build build/
cmake --build build/ -j 4
cmake --build build/ --clean-first -j 4
cmake --build build/ --verbose --clean-first -j 4
cmake --build build/ --target all
cmake --build build/ --clean-first --verbose
```



## Commands with 'config'
```bash
#  None Debug Release RelWithDebInfo MinSizeRel ...
ccmake build/ -DCMAKE_BUILD_TYPE=MinSizeRel
cmake build/ -DCMAKE_BUILD_TYPE=RelWithDebInfo
cmake build/ -DCMAKE_VERBOSE_MAKEFILE=ON
```