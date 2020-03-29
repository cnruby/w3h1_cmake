<h1>CMake Tool 'ccmake' "basic_103"</h1>

<h2>TABLE of CONTENT</h2>

- [What does Tool 'ccmake'](#what-does-tool-ccmake)
- [Where are Tool 'ccmake'](#where-are-tool-ccmake)
- [Why does Tool 'ccmake'](#why-does-tool-ccmake)
- [How to use The Tool 'ccmake'](#how-to-use-the-tool-ccmake)
  - [Get This Project](#get-this-project)
  - [Create Binary Build Folder 'build' with ccmake](#create-binary-build-folder-build-with-ccmake)
  - [Change 'build/CMakeCache.txt' with ccmake](#change-buildcmakecachetxt-with-ccmake)

## What does Tool 'ccmake'
- ![image](./uml/what/what.png)
- Generate Binary Build Folder 'build/' with a build system generator
- Change The file 'build/CMakeCache.txt'

## Where are Tool 'ccmake'
```bash
ccmake --help
which ccmake
```

## Why does Tool 'ccmake'
- Create Generator Build Folder with Advanced Mode
- Simplify the Configuration 'CMakeCache'

## How to use The Tool 'ccmake'

### Get This Project
```bash
git clone https://github.com/cnruby/w3h1_cmake.git basic_103
cd basic_103
git checkout basic_103
```

### Create Binary Build Folder 'build' with ccmake
```bash
# cmake -Bbuild/ -GNinja
ccmake -Bbuild/ -GNinja
q
ccmake -Bbuild/ -GNinja
c
c
q
ccmake -Bbuild/ -GNinja
>> c
>> c
>> g
```

### Change 'build/CMakeCache.txt' with ccmake
```bash
cmake --build build/
ccmake build
>> t
>> cmd+PageUp
>> Down
>> Enter
>> c
>> g
cmake --build build/ --target clean
cmake --build build/
```