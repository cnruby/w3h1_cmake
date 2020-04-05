<h1>Format the '<code>C++</code>'s File</h1> "basic_108"</h1>



<h2>TABLE of CONTENTS</h2>

- [Requirements](#requirements)
- [C++ Basic Concepts](#c-basic-concepts)
- [Install the Tool 'clang-format'](#install-the-tool-clang-format)
  - [How to install the Tool 'clang-format' on MacOS](#how-to-install-the-tool-clang-format-on-macos)
  - [How to install the Tool 'clang-format' on Ubuntu 20.04](#how-to-install-the-tool-clang-format-on-ubuntu-2004)
- [How to Format A <code>C/C++</code> File with Style](#how-to-format-a-cc-file-with-style)
- [How to Create the Format File '.clang-format' with Style](#how-to-create-the-format-file-clang-format-with-style)
- [a Comparison of the Different Formatting Styles](#a-comparison-of-the-different-formatting-styles)
- [How to Format All <code>C/C++</code> Files](#how-to-format-all-cc-files)
- [References](#references)



## Requirements
- [VS Code](https://code.visualstudio.com/) OR [Eclipse Theia](https://theia-ide.org/)
- [CMake](https://cmake.org/)
- [Tool 'clang-format']()
- [Python 3.7+](https://www.python.org/)
- [Tool 'cmake_format'](https://github.com/cheshirekow/cmake_format)



## C++ Basic Concepts
- The GNU Compiler Collection (GCC) is a collection of compilers and libraries for C, C++, Objective-C, Fortran, Ada, Go, and D programming languages.
- LLVM is a C/C++ compiler toolset just like GCC
- LLVM can compile C, C++ and Objective-C.
- Clang provided by the LLVM toolset is able to compile C and C++ codes faster than GCC. 
- The LLVM debugger LLDB is much more memory efficient and very fast at loading symbols compared to GCC.
- LLVM supports C++11, C++14 and C++17 through libc++ and libc++ ABI projects.
- LLVM is available on Linux, Windows and Mac OS X. So it’s cross platform. 
- The default GCC compiler in Ubuntu
- The default Clang compiler in MacOS



## Install the Tool <code>'clang-format'</code>
### How to install the Tool 'clang-format' on MacOS
```bash
brew install clang-format
```



### How to install the Tool 'clang-format' on Ubuntu 20.04
```bash
# https://cnruby.blogspot.com/2020/04/howto-install-clang-10include-clang-and.html
sudo apt-get install clang-tools-10
```



## How to Format A <code>C/C++</code> File with Style
```bash
clang-format -style=Google src/main.cxx
clang-format -style=Google -i src/main.cxx
clang-format -style=Google -i *.cxx
```



```bash
# clang-format default style 'LLVM'
clang-format -style=file src/main.cxx
```
![image]()



## How to Create the Format File '.clang-format' with Style
```bash
# Clang format predefined styles
# styles = ( LLVM Google Chromium Mozilla WebKit Microsoft )
clang-format -style=Google -dump-config
clang-format -style=Google -dump-config > .clang-format
clang-format -style=Mozilla -dump-config > .clang-format
```



## a Comparison of the Different Formatting Styles
```bash
code cmd.cmake
cmake -P cmd.cmake
```



## How to Format All <code>C/C++</code> Files
```bash
find . -regex '.*\.\(cxx\cpp\|hpp\|cu\|c\|h\)' -exec clang-format -style=file -i {} \;
```



## References
- https://github.com/KratosMultiphysics/Kratos/wiki/How-to-configure-clang%E2%80%90format
- https://leimao.github.io/blog/Clang-Format-Quick-Tutorial/
- http://clang.llvm.org/docs/ClangFormat.html
- https://marketplace.visualstudio.com/items?itemName=xaver.clang-format
- https://linuxhint.com/install-llvm-ubuntu/
- https://llvm.org/docs/GettingStarted.html
- https://clang.llvm.org/docs/ClangFormatStyleOptions.html
- command script cmake execute process shell
- https://gist.github.com/andrewseidl/8066c18e97c40086c183
- https://github.com/KratosMultiphysics/Kratos/wiki/How-to-configure-clang%E2%80%90format