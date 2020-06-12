
<h2>Hello, <code>Static</code> Library!</h2>
<h3>Creating, Building and Using Static Library</h3>
</br>
</br>

[@Gitter](https://gitter.im/cnruby) :gitter.im/cnruby<br/>
Code ID: basic_113</br>
Code Name: Hello, Static Library!</br>
<p class ="fragment" data-audio-src="docs/113/audio/basic_113-01.m4a"></p>



* [Youtube Video](https://youtu.be/ztmYpK7lFCI)



<h2>TABLE of CONTENTS</h2>

- [What is This Structure of Project?](#what-is-this-structure-of-project)
  - [The <code>Folder's</code> Structure](#the-folders-structure)
  - [The <code>Command's</code> Structure](#the-commands-structure)
  - [The Real <code>Command's</code> Structure](#the-real-commands-structure)
  - [The <code>Process's</code> Structure](#the-processs-structure)
- [Analyze The Build of <code>CMake</code>](#analyze-the-build-of-cmake)
  - [Code of The Listfile of <code>'lib'</code>](#code-of-the-listfile-of-lib)
  - [Code of The Listfile of <code>'src'</code>](#code-of-the-listfile-of-src)
  - [Demonstrate Build's Process on <code>CMake<code>](#demonstrate-builds-process-on-codecmakecode)
- [Analyze The Build of Compiler's Commands](#analyze-the-build-of-compilers-commands)
  - [Build's Commands of <code>C++</code> Compiler](#builds-commands-of-c-compiler)
  - [Demonstrate Build's Commands of <code>C++</code> Compiler](#demonstrate-builds-commands-of-c-compiler)
  - [How to Graph the relationship of Build's Process](#how-to-graph-the-relationship-of-builds-process)
- [Final Summary](#final-summary)
- [References](#references)
- [The Real <code>Process's</code> Structure](#the-real-processs-structure)
- [The Project Command](#the-project-command)
  - [Formatting The Codes](#formatting-the-codes)
  - [Get The Code with Shell Commands](#get-the-code-with-shell-commands)
  - [Build and Run The Project](#build-and-run-the-project)
<p class ="fragment" data-audio-src="docs/113/audio/basic_113-02.m4a"></p>



## What is This Structure of Project?
### The <code>Folder's</code> Structure
```bash
#<!-- markdown-exec(cmd:cat docs/output/tree.txt) -->#
.
├── CMakeLists.txt
├── lib
│  ├── CMakeLists.txt
│  ├── header.cxx
│  └── header.hxx
└── src
   ├── CMakeLists.txt
   └── main.cxx
#<!-- /markdown-exec -->
```
<p class ="fragment" data-audio-src="docs/113/audio/basic_113-03.m4a"></p>



![_image](docs/113/image/what-command.png)
### The <code>Command's</code> Structure
<p class ="fragment" data-audio-src="docs/113/audio/basic_113-04.m4a"></p>



![_image](docs/113/image/what-command-real.png)
### The Real <code>Command's</code> Structure
<p class ="fragment" data-audio-src="docs/113/audio/basic_113-05.m4a"></p>



![_image](docs/113/image/what-process.png)
### The <code>Process's</code> Structure
<p class ="fragment" data-audio-src="docs/113/audio/basic_113-06.m4a"></p>



## Analyze The Build of <code>CMake</code>
![_image](./docs/113/image/basic_113-07.png)
<p class ="fragment" data-audio-src="docs/113/audio/basic_113-07.m4a"></p>



```bash
#<!-- markdown-exec(cmd:cat lib/CMakeLists.txt) -->#
add_library(lib_113 STATIC ${LIB_DIR}/header.cxx)
#target_include_directories(
#    lib_113
#    PRIVATE
#    ${LIB_DIR}
#)
#<!-- /markdown-exec -->
```
### Code of The Listfile of <code>'lib'</code>
<p class ="fragment" data-audio-src="docs/113/audio/basic_113-08.m4a"></p>



```bash
#<!-- markdown-exec(cmd:cat src/CMakeLists.txt) -->#
add_executable(
  main_113
  main.cxx
)
target_include_directories(
  main_113
  PRIVATE
  ${LIB_DIR}/
)
target_link_libraries(main_113 lib_113)
#<!-- /markdown-exec -->
```
### Code of The Listfile of <code>'src'</code>
<p class ="fragment" data-audio-src="docs/113/audio/basic_113-09.m4a"></p>



### Demonstrate Build's Process on <code>CMake<code>
<video width="720" height="480" controls data-autoplay>
  <source src="docs/113/video/basic_113-10.mov" autoplay=true type="video/mp4">
</video>



## Analyze The Build of Compiler's Commands
<img src="./docs/113/image/basic_113-11.png" alt="Analyze The Build of Compiler's Commands" height="80%" width="80%">
<p class ="fragment" data-audio-src="docs/113/audio/basic_113-11.m4a"></p>



```bash
#<!-- markdown-exec(cmd:cat shell/cl.sh) -->#!/bin/bash
#[1/4]: Compile
c++ -I./lib -MD -MF ./bin/main.cxx.o.d  -c ./src/main.cxx \
  -o ./bin/main.cxx.o
#[2/4]: Compile
c++ -I./lib -MD -MF ./bin/header.cxx.o.d  -c ./lib/header.cxx \
  -o ./bin/header.cxx.o
#[3/4]: Package
cmake -E rm -f ./bin/liblib_113.a && \
  ar qc ./bin/liblib_113.a ./bin/header.cxx.o && \
  ranlib ./bin/liblib_113.a && cmake -E touch ./bin/liblib_113.a
#[4/4] : Link
c++ ./bin/main.cxx.o  -o ./bin/main_113  ./bin/liblib_113.a
#<!-- /markdown-exec -->
```
### Build's Commands of <code>C++</code> Compiler
<p class ="fragment" data-audio-src="docs/113/audio/basic_113-12.m4a"></p>



### Demonstrate Build's Commands of <code>C++</code> Compiler
<video width="720" height="480" controls data-autoplay>
  <source src="docs/113/video/basic_113-13.mov" autoplay=true type="video/mp4">
</video>



![_image](docs/113/image/how.png)
### How to Graph the relationship of Build's Process
<p class ="fragment" data-audio-src="docs/113/audio/basic_113-14.m4a"></p>



![_image](docs/113/image/what-process.png)
## Final Summary
<p class ="fragment" data-audio-src="docs/113/audio/basic_113-15.m4a"></p>



<h1><!-- markdown-exec(cmd:echo "感谢大家观看!") -->感谢大家观看!<!-- /markdown-exec --></h1>

@Gitter: gitter.im/cnruby<br/>

@Github: github.com/cnruby<br/>

@Twitter: twitter.com/cnruby<br/>

@Blogspot: cnruby.blogspot.com
=======
# C++ Application with 'CMake'

## Prerequisite

### OS Environment
- MacOS 10.11.6+
- Ubuntu 20.04+

### Language Environment
- [Clang 8.0.0+](https://clang.llvm.org/)
- [Python 3.7+](https://www.python.org/)
- [Ruby 2.7.1+](https://www.ruby-lang.org/en/)
- [Rust 1.42.0+](https://www.rust-lang.org/)

### VS Code
- [VS Code](https://code.visualstudio.com/) OR [Eclipse Theia](https://theia-ide.org/)

### VS Code Extension
- [C/C++](https://marketplace.visualstudio.com/items?itemName=ms-vscode.cpptools)
- [CMake Tool](https://marketplace.visualstudio.com/items?itemName=ms-vscode.cmake-tools) 
- [CMake](https://marketplace.visualstudio.com/items?itemName=twxs.cmake)
- [reStructuredText](https://marketplace.visualstudio.com/items?itemName=lextudio.restructuredtext)
- [Markdown All in One](https://marketplace.visualstudio.com/items?itemName=yzhang.markdown-all-in-one)
- [Python](https://marketplace.visualstudio.com/items?itemName=ms-python.python)
- [PlantUML](https://marketplace.visualstudio.com/items?itemName=jebbs.plantuml)
- [cmake-format](https://marketplace.visualstudio.com/items?itemName=cheshirekow.cmake-format)

### Tool and Library
- [CMake](https://cmake.org/)
- [Ninja](https://ninja-build.org/)
- [clang-format](https://clang.llvm.org/docs/ClangFormatStyleOptions.html)
- [cmake_format](https://github.com/cheshirekow/cmake_format)
- [Doxygen](http://www.doxygen.nl/)
- [Graphviz](http://graphviz.org/)
- [Sphinx](https://www.sphinx-doc.org/)
- [Sphinx bootstrap theme](https://github.com/ryan-roemer/sphinx-bootstrap-theme)
- [Library libpng 1.6.37+](http://www.libpng.org/pub/png/libpng.html)
- [Library boost 1.72.0+](https://www.boost.org/)
- [Library gettext 0.20.1](https://www.gnu.org/software/gettext/)
- [Library SQLite 3.31.1+](https://www.sqlite.org/index.html)
- [Library SQLite 3.8.10.2+](https://www.sqlite.org/index.html) For "basic_126"

### Library on Ubuntu
- Library language-pack-de
- Library language-pack-zh-hans
- Library language-pack-zh-hant, optional

## Liste
- **Hello, CMake!** Hello Application with 'CMake' "basic_101" [Youtube Video](https://youtu.be/I2-fIgkGfy8) | [Code](https://github.com/cnruby/w3h1_cmake/tree/basic_101)
- **Hello, Ninja!** Hello Application with 'CMake' and 'Ninja' "basic_102" [Youtube Video](https://youtu.be/wPpknWBG3v4) | [Code](https://github.com/cnruby/w3h1_cmake/tree/basic_102)
- **Hello, 'ccmake'!** 'CMake' Tool 'ccmake' "basic_103" [Youtube Video](https://youtu.be/yV7kopPr2Dk) | [Code](https://github.com/cnruby/w3h1_cmake/tree/basic_103)
- **Hello, 'cmake'!** Where are The 'CMake' Commands from? "basic_104" [Youtube Video](https://youtu.be/Dkfdqyeh4OM) | [Code](https://github.com/cnruby/w3h1_cmake/tree/basic_104)
- **Hello, VS Code!** Develop The 'CMake' Project with VS Code "basic_105" [Youtube Video](https://youtu.be/GgImAx-TTfY) | [Code](https://github.com/cnruby/w3h1_cmake/tree/basic_105)
- **Hello, CMake Script!** CMake's Scripting Language for Building Systems "basic_106" [Youtube Video](https://youtu.be/frS4Zc4zhMU) | [Code](https://github.com/cnruby/w3h1_cmake/tree/basic_106)
- **Hello, 'cmake_format'!** How to Format the 'CMake's File "basic_107" [Youtube Video](https://youtu.be/mhM12sqDKpE) | [Code](https://github.com/cnruby/w3h1_cmake/tree/basic_107)
- **Hello, C++ Style!** Formatting the 'C/C++'s Codes "basic_108" [Youtube Video](https://youtu.be/uN6OollV1xo) | [Code](https://github.com/cnruby/w3h1_cmake/tree/basic_108)
- **Hello, C++ Header!** Using a Include File from Other Folder "basic_109" [Youtube Video](https://youtu.be/dHt_i7-sBNM) | [Code](https://github.com/cnruby/w3h1_cmake/tree/basic_109)
- **Hello, Common Header!** Linking a Comman Include file in C++ "basic_110" [Youtube Video](https://youtu.be/XHcIdPFaTw0) | [Code](https://github.com/cnruby/w3h1_cmake/tree/basic_110)
- **Hello, C++ Library!** Build a Single Header File with CMake "basic_111" [Youtube Video](https://youtu.be/a0FdU06UGtQ) | [Code](https://github.com/cnruby/w3h1_cmake/tree/basic_111)
- **Hello, Default Include Paths!** Query the Default Include Directories "basic_112" [Youtube Video](https://youtu.be/-1hA3QqJKEw) | [Code](https://github.com/cnruby/w3h1_cmake/tree/basic_112)
- **Hello, Static Library!** Creating, Building and Using Static Library "basic_113" [Youtube Video](https://youtu.be/ztmYpK7lFCI) | [Code](https://github.com/cnruby/w3h1_cmake/tree/basic_113)
- **Hello, Different Folders!** Storing Header and Implementation File in Different Folders "basic_114" [Youtube Video](https://youtu.be/nTc_m7ELkzE) | [Code](https://github.com/cnruby/w3h1_cmake/tree/basic_114)
- **Hello, PRIVATE/PUBLIC!** Difference between PRIVATE/PUBLIC with target_include_directories "basic_115" [Youtube Video](https://youtu.be/pmRWYYEXLoc) | [Code](https://github.com/cnruby/w3h1_cmake/tree/basic_115)
- **Hello, Configure File!** Generating a C++ Configure File with CMake "basic_116" [Youtube Video](https://youtu.be/thJFmINbG0U) | [Code](https://github.com/cnruby/w3h1_cmake/tree/basic_116)
- **Hello, Package!** Finding an Executable Package For C++ Code "basic_117" [Youtube Video](https://youtu.be/D5sny0H8jUM) | [Code](https://github.com/cnruby/w3h1_cmake/tree/basic_117)
- **Hello, Doxygen!** Generating Documentation From annotated 'C/C++'s Sources "basic_118" "basic_118" [Youtube Video](https://youtu.be/T1CBiV09v8w) | [Code](https://github.com/cnruby/w3h1_cmake/tree/basic_118)
- **Hello, Module!** Using Your Custom CMake-Find Module "basic_119" [Youtube Video](https://youtu.be/7SkNPLFLrEc) | [Code](https://github.com/cnruby/w3h1_cmake/tree/basic_119)
- **Hello, Breathe!** Generating functional Documentation For 'C/C++'s Sources "basic_120" [Youtube Video](https://youtu.be/RE6rbuy11Z0) | [Code](https://github.com/cnruby/w3h1_cmake/tree/basic_120)
- **Hello, Third Party Library!** Using Third Party Library For C++ Sources "basic_121" [Youtube Video](https://youtu.be/fPAShAPvlio) | [Code](https://github.com/cnruby/w3h1_cmake/tree/basic_121)
- **Hello, Library's Components!** Using Library's Components For C++ Sources "basic_122" [Youtube Video](https://youtu.be/AMn65HQ5WAE) | [Code](https://github.com/cnruby/w3h1_cmake/tree/basic_122)
- **Hello, Module's Variables!** Using Find-Module's Variables with CMake Sources "basic_123" [Youtube Video](https://youtu.be/UuMJGiRZmlA) | [Code](https://github.com/cnruby/w3h1_cmake/tree/basic_123)
- **Hello, Targets!** Building multiple Targets using CMake on Ubuntu 20.04 "basic_124" [Youtube Video](https://youtu.be/-T4BMEI2agc) | [Code](https://github.com/cnruby/w3h1_cmake/tree/basic_124)
- **Hello, MULTOS!** Building C++ Project on Multiple Operating System using CMake "basic_125" [Youtube Video](https://youtu.be/fBkFHSka2NA) | [Code](https://github.com/cnruby/w3h1_cmake/tree/basic_125)
- **Hello, Multiple Versions!** Building Multiple Versions of a Shared Library Using CMake "basic_126" [Youtube Video](https://youtu.be/GmXbz3yfhWc) | [Code](https://github.com/cnruby/w3h1_cmake/tree/basic_126)
- **Hello, $PATH!** Creating a Symbolic Link for a Library "basic_127" [Youtube Video](https://youtu.be/DFdMZvpCoCg) | [Code](https://github.com/cnruby/w3h1_cmake/tree/basic_127)
- **Hello, GitHub! Formatting Library from Repositories Using CMake "basic_128" [Youtube Video](https://youtu.be/27zsR2It2K8) | [Code](https://github.com/cnruby/w3h1_cmake/tree/basic_128)
- **Hello, Hunter!** CMake-based Cross-Platform Package Manager for C++ Projects "basic_129" [Youtube Video](https://youtu.be/QWBu7vykWpc) | [Code](https://github.com/cnruby/w3h1_cmake/tree/basic_129)
- **Hello, Multiple Projects!** Creating a Solution with C++ Multiple Projects "basic_130" [Youtube Video](https://youtu.be/Vt5TEcFm0Hg) | [Code](https://github.com/cnruby/w3h1_cmake/tree/basic_130)
- **Hello, Output!** Changing the output default directory in a dedicated directory "basic_131" [Youtube Video](https://youtu.be/HnXP8jgryC4) | [Code](https://github.com/cnruby/w3h1_cmake/tree/basic_131)
- **Hello, Custom Target!** Adding and Using A Custom Target in CMake "basic_132" [Youtube Video](https://youtu.be/xcJbhFgVI04) | [Code](https://github.com/cnruby/w3h1_cmake/tree/basic_132)
- **Hello, Ninja Multi-Config!** Creating a Solution with C++ Multiple Configuration "basic_133" [Youtube Video](https://youtu.be/TLpscEDcI1U) | [Short Video](https://youtu.be/l3DCnXTSJuA) | [Code](https://github.com/cnruby/w3h1_cmake/tree/basic_133)
- **Hello, COMPILE_DEFINITIONS!** How to specify preprocessor definitions through CMake "basic_134" [Youtube Video](https://youtu.be/4GPcMCwWgVM) | [Code](https://github.com/cnruby/w3h1_cmake/tree/basic_134)
- **Hello, Generator Expression!** How to Learn Generator Expression in CMake "basic_135" [Youtube Video](https://youtu.be/xZkakSO3_II) | [Code](https://github.com/cnruby/w3h1_cmake/tree/basic_135)
- **Hello, Targets 2.0!** How to Use Generator Expression in C++ Project "basic_136" [Youtube Video](https://youtu.be/hEWES7JgrfU) | [Code](https://github.com/cnruby/w3h1_cmake/tree/basic_136)
- **Hello, Object Library!** How to Create and Use The Object File in CMake "basic_137"<br/> [Youtube Video](https://youtu.be/xj1fx2Xsl-U) | [Short Video](https://youtu.be/edcA9puzDgU) | [Code](https://github.com/cnruby/w3h1_cmake/tree/basic_137)
- **Hello, Object File!** How to Obtain and Apply The Object File of Library in CMake "basic_138"<br/> [Youtube Video](https://youtu.be/1LMmQ_3kjFA) | [Short Video](https://youtu.be/9Y-alzDxJpg) | [Code](https://github.com/cnruby/w3h1_cmake/tree/basic_138)
- **Hello, install:exe!** How to install executable from the project to local "basic_139"<br/> [Youtube Video](https://youtu.be/nJj1efRi6oI) | [Short Video](https://youtu.be/edcA9puzDgU) | [Code](https://github.com/cnruby/w3h1_cmake/tree/basic_139)
- **Hello, install:multi!** How to install executable on local with "Ninja Multi-Config" "basic_140" <br/> [Youtube Video](https://youtu.be/tCN-eFZN8xE) | [Short Video](https://youtu.be/oB6Ujd0BVno) | [Code](https://github.com/cnruby/w3h1_cmake/tree/basic_140)
- **Hello, install:DESTDIR!** How to use CMake Environment Variable `DESTDIR` "basic_141" <br/> [Youtube Video](https://youtu.be/NtYyjwSjt9Q) | [Short Video](https://youtu.be/15Zrf_WZXPU) | [Code](https://github.com/cnruby/w3h1_cmake/tree/basic_141)





## References

- https://cmake.org/cmake/help/latest/command/include_directories.html
- https://cmake.org/cmake/help/latest/command/target_include_directories.html
- https://stackoverflow.com/questions/31969547/what-is-the-difference-between-include-directories-and-target-include-directorie
- https://stackoverflow.com/questions/26243169/cmake-target-include-directories-meaning-of-scope
- https://gitlab.kitware.com/cmake/cmake/issues/19802
- https://pabloariasal.github.io/2018/02/19/its-time-to-do-cmake-right/
- http://mariobadr.com/creating-a-header-only-library-with-cmake.html
- https://stackoverflow.com/questions/18869282/initialize-char
- https://stackoverflow.com/questions/2587349/initializing-char-and-char-pointers
- https://stackoverflow.com/questions/18963888/c-char-initialization-in-constructor
- https://stackoverflow.com/questions/13703647/how-to-properly-add-include-directories-with-cmake
- https://stackoverflow.com/questions/9834067/difference-between-char-and-const-char
- https://stackoverflow.com/questions/2186246/what-is-o-file
- https://www.online-convert.com/file-format/o



## The Real <code>Process's</code> Structure
![_image](docs/113/image/what-process-real.png)



## The Project Command



### Formatting The Codes
```bash
ruby format-codes.rb
```


### Get The Code with Shell Commands
```bash
git clone https://github.com/cnruby/w3h1_cmake.git basic_113
cd basic_113
git checkout basic_113
code .
```



### Build and Run The Project
```bash
cmake -GNinja -Bbuild/
cmake --build build/ --clean-first -v
cmake --build build/ --target clean
cmake --build build/ --clean-first -v &> v11.txt
./bin/main_113
rm -rf ./build/ ./bin/*
./shell/start.sh
```
=======
- [Learning CMake: A beginner's guide](https://tuannguyen68.gitbooks.io/learning-cmake-a-beginner-s-guide/content/index.html)
- [Modern CMake](https://cliutils.gitlab.io/modern-cmake/)
- [CMake Community Wiki](https://gitlab.kitware.com/cmake/community/-/wikis/home)
- [CMake BASIS](https://cmake-basis.github.io/quickstart.html)
- [CMake Cookbook Github](https://github.com/dev-cafe/cmake-cookbook)
- [CMake Cookbook 中文](https://chenxiaowei.gitbook.io/cmake-cookbook/)
- [CMake questions forum](https://discourse.cmake.org)
- [Getting started with cmake](https://riptutorial.com/cmake)

## @cnruby
- [@Gitter](https://gitter.im/cnruby)
- [@Blog](https://www.blogger.com/blogger.g?tab=mj1&blogID=19758264#allposts/postNum=0)
- [@Twitter](https://twitter.com/cnruby)

