basic_109</br>
<h1>Hello, <code>C++</code> Header!</h1>
<h3>Using a Include File from Other Folder</h3>

[@Gitter](https://gitter.im/cnruby) :gitter.im/cnruby<br/>
<p class ="fragment" data-audio-src="docs/109/audio/birds.ogg"></p>



<h2>TABLE of CONTENTS</h2>

- [The Project <code>"Hello, Header!"</code>](#the-project-%22hello-header%22)
  - [What is This Project's Structure](#what-is-this-projects-structure)
  - [Get The Code with Shell Commands](#get-the-code-with-shell-commands)
- [The Bridge Between <code>C++</code> Main File and Include File](#the-bridge-between-c-main-file-and-include-file)
  - [How to Use the <code>CMake</code> <code>target_include_directories()</code> Command?](#how-to-use-the-cmake-targetincludedirectories-command)
  - [The <code>'CMake' 'target_include_directories'</code> Command](#the-cmake-targetincludedirectories-command)
  - [Demonstrate This Project's Code and Structure](#demonstrate-this-projects-code-and-structure)
  - [Build and Run The Project](#build-and-run-the-project)
  - [Demonstrate This Project's Structure](#demonstrate-this-projects-structure)
- [Tip: The Two <code>'CMake'</code> Variables](#tip-the-two-cmake-variables)
  - [Display The Two <code>'CMake</code> Variable's Values](#display-the-two-cmake-variables-values)
  - [Demonstratey The Two <code>'CMake</code> Variable's Values](#demonstratey-the-two-cmake-variables-values)
- [References](#references)
- [The Project Commnads](#the-project-commnads)
  - [Demonstrate Comparing the Different Formatting Styles](#demonstrate-comparing-the-different-formatting-styles)



## The Project <code>"Hello, Header!"</code>
### What is This Project's Structure



![image](docs/109/images/what.png)



### Get The Code with Shell Commands
```bash
git clone https://github.com/cnruby/w3h1_cmake.git basic_109
cd basic_109
git checkout basic_109
code .
```



## The Bridge Between <code>C++</code> Main File and Include File



### How to Use the <code>CMake</code> <code>target_include_directories()</code> Command?
![image](docs/109/images/how.png)



### The <code>'CMake' 'target_include_directories'</code> Command

```bash
#<!-- markdown-exec(cmd:cat src/CMakeLists.txt) -->#
add_executable(
  b109
  main.cxx
)
# target_include_directories(
#    CXX_TARGET_NAME SCOPE_NAME INCLUDE_DIR_1 INCLUDE_DIR_N)
set(
  HXX_DIRS
  ${PROJECT_SOURCE_DIR}/include/
)
target_include_directories(
  b109
  PRIVATE ${HXX_DIRS} ${HXX_DIRS}/local/
)

# The differece between PROJECT_SOURCE_DIR and CMAKE_CURRENT_SOURCE_DIR
message(STATUS "PROJECT_SOURCE_DIR = ${PROJECT_SOURCE_DIR}/include/")
message(STATUS "CURRENT_SOURCE_DIR = ${CMAKE_CURRENT_SOURCE_DIR}/include/")

# ERROR
# target_include_directories(b109 PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/include/)
#<!-- /markdown-exec -->
```



### Demonstrate This Project's Code and Structure



### Build and Run The Project
```bash
cmake -GNinja -Bbuild/
cmake --build build/
./bin/b109
```



### Demonstrate This Project's Structure
<video width="720" height="480" controls data-autoplay>
  <source src="docs/108/video/basic_108-18.mp4" autoplay=true type="video/mp4">
</video>



## Tip: The Two <code>'CMake'</code> Variables
```bash
PROJECT_SOURCE_DIR
CMAKE_CURRENT_SOURCE_DIR
```



### Display The Two <code>'CMake</code> Variable's Values
<pre><code>
cmake --build build/ --target rebuild_cache
</code></pre>



### Demonstratey The Two <code>'CMake</code> Variable's Values
<video width="720" height="480" controls data-autoplay>
  <source src="docs/108/video/basic_108-18.mp4" autoplay=true type="video/mp4">
</video>



<h1><!-- markdown-exec(cmd:echo "感谢大家观看!") -->感谢大家观看!<!-- /markdown-exec --></h1>

@Gitter: gitter.im/cnruby<br/>

@Github: github.com/cnruby<br/>

@Twitter: twitter.com/cnruby<br/>

@Blogspot: cnruby.blogspot.com



## References
- 



## The Project Commnads
```bash
cmake-format --dump-config > .cmake-format.yml
clang-format -dump-config -style=Google > .clang-format
```

### Demonstrate Comparing the Different Formatting Styles
<video width="720" height="480" controls data-autoplay>
  <source src="docs/108/video/basic_108-18.mp4" autoplay=true type="video/mp4">
</video>
