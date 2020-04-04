<h1>How to Format the '<code>CMake</code>'s File</h1> "basic_107"<br/><br/>
@Gitter: gitter.im/cnruby<br/>
@Github: github.com/cnruby<br/>
@Twitter: twitter.com/cnruby<br/>
@Blogspot: cnruby.blogspot.com


* [Youtube Video](https://youtu.be/mhM12sqDKpE)


<h4>TABLE of CONTENTS</h4>

- [Requirements](#requirements)
- [How to Disable Auto Formatting of the Code](#how-to-disable-auto-formatting-of-the-code)
- [Install The VS Code Extension '<code>cmake-format</code>'](#install-the-vs-code-extension-cmake-format)
  - [How to Install the Tool '<code>cmake_format</code>'](#how-to-install-the-tool-cmakeformat)
  - [How to Install the Extension "<code>cmake-format</code>"](#how-to-install-the-extension-%22cmake-format%22)
- [Why do we need the Tool '<code>cmake_format</code>'?](#why-do-we-need-the-tool-cmakeformat)
- [Get the Project](#get-the-project)
- [How to Use the Tool <code>'cmake_format'</code>](#how-to-use-the-tool-cmakeformat)
  - [Format the CMake's File without a Custom <code>'cmake_format'</code> Config File](#format-the-cmakes-file-without-a-custom-cmakeformat-config-file)
  - [Create A Dump <code>'cmake_format's</code> Config File](#create-a-dump-cmakeformats-config-file)
  - [Specify a Config File to Format the <code>'CMake's</code> File](#specify-a-config-file-to-format-the-cmakes-file)
  - [How to Format all <code>'CMake's</code> Files](#how-to-format-all-cmakes-files)
  - [Support for Configure Inputs](#support-for-configure-inputs)
- [How to Use the Extension <code>'cmake-format'</code>](#how-to-use-the-extension-cmake-format)
  - [Set the Extension <code>'cmake-format'</code>, only if Specify a Config File](#set-the-extension-cmake-format-only-if-specify-a-config-file)
  - [Use the Extension <code>'cmake-format'</code> with and without a Config File](#use-the-extension-cmake-format-with-and-without-a-config-file)
- [References](#references)
- [Example Codes: Format All <code>CMake's</code> Files](#example-codes-format-all-cmakes-files)



## Requirements
- [VS Code](https://code.visualstudio.com/)
- [CMake](https://cmake.org/)
- [VS Code Extension "CMake Tool"](https://marketplace.visualstudio.com/items?itemName=ms-vscode.cmake-tools) 
- [VS Code Extension "CMake"](https://marketplace.visualstudio.com/items?itemName=twxs.cmake)
- [Python 3.7+](https://www.python.org/)
- [Tool 'cmake_format'](https://github.com/cheshirekow/cmake_format)
- [VS Code Extension "cmake-format"](https://marketplace.visualstudio.com/items?itemName=cheshirekow.cmake-format)
- Disable auto formatting of the code



## How to Disable Auto Formatting of the Code
![image](docs/107/images/format_on_save.png)



## Install The VS Code Extension '<code>cmake-format</code>'



### How to Install the Tool '<code>cmake_format</code>'
```bash
# sudo apt install python-pip
pip install cmake_format
#pip install --user cmake_format
echo "# cmake-format" >> ~/.bash_profile
echo "export PATH="$HOME/Library/Python/3.7/bin:$PATH" >> ~/.bash_profile
. ~/.bash_profile
```



### How to Install the Extension "<code>cmake-format</code>"

<video width="640" height="480" controls>
  <source src="docs/107/videos/install_vscode_cmake_format.mp4" type="video/mp4">
</video>



## Why do we need the Tool '<code>cmake_format</code>'?
- keep the code base manageable
- allow coders to use C++ language features productively



## Get the Project
```bash
git clone https://github.com/cnruby/w3h1_cmake.git basic_107
cd basic_107
git checkout basic_106
code .
cmake -GNinja -Bbuild/
cmake --build build/
```



## How to Use the Tool <code>'cmake_format'</code>



### Format the CMake's File without a Custom <code>'cmake_format'</code> Config File
```bash
#cmake-format --help
cmake-format --version
#
cmake-format CMakeLists.txt | more
#cmake-format --in-place CMakeLists.txt
cmake-format -i CMakeLists.txt
# 
cmake-format --command-case upper CMakeLists.txt | more
cmake-format --tab-size 4 CMakeLists.txt | more
```



### Create A Dump <code>'cmake_format's</code> Config File
```bash
cmake-format --dump-config | more
# language yaml
cmake-format --dump-config --no-help > .cmake-format.yml
# or language json
cmake-format --dump-config json > .cmake-format.json
# or language python
cmake-format --dump-config python > .cmake-format.py
# ????
cmake-format --dump-config yaml > .cmake-format.yml
```



### Specify a Config File to Format the <code>'CMake's</code> File
```bash
#cmake-format -i CMakeLists.txt --config-file .cmake-format.yml
cmake-format -i CMakeLists.txt -c .cmake-format.yml
```



### How to Format all <code>'CMake's</code> Files
```bash
cmake-format -i $(find . -name "CMakeLists.txt")
cmake-format -i $(find . -name "*.cmake")
```



### Support for Configure Inputs
![image](docs/107/images/inputs_code.png)



## How to Use the Extension <code>'cmake-format'</code>



### Set the Extension <code>'cmake-format'</code>, only if Specify a Config File
<video width="720" height="480" controls>
  <source src="docs/107/videos/config_vscode_cmake_format.mp4" type="video/mp4">
</video>

- cmakeFormat.args: Additional command line arguments to be specified.
- like "--config-file ./.cmake-format.yaml", to specify a custom configuration

```bash
--config-file ./.cmake-format.yaml
```



### Use the Extension <code>'cmake-format'</code> with and without a Config File
- SHIFT+CMD+P Format Document



## References
- https://gitlab.kitware.com/cmake/community/-/wikis/home
- https://marketplace.visualstudio.com/items?itemName=cheshirekow.cmake-format
- https://github.com/cheshirekow/cmake_format
- https://github.com/cheshirekow/cmake_format/issues/165
- https://dev.to/10xlearner/formatting-cmake-4dle
- https://google.github.io/styleguide/cppguide.html
- https://github.com/Komet/MediaElch/blob/master/.travis.yml
- https://github.com/StableCoder/cmake-scripts/blob/master/.gitlab-ci.yml
- https://marketplace.visualstudio.com/items?itemName=mynkow.FormatdocumentonSave
- https://code.visualstudio.com/docs/editor/codebasics
- https://cnruby.blogspot.com/2020/04/how-to-install-tool-cmaketool-on-ubuntu.html
- https://preshing.com/20170511/how-to-build-a-cmake-based-project/#running-cmake-gui
- https://tuannguyen68.gitbooks.io/learning-cmake-a-beginner-s-guide/
- https://www.dealii.org/9.1.1/users/cmakelists.html

## Example Codes: Format All <code>CMake's</code> Files
```bash
find . \( -name '*.cmake' -o -name 'CMakeLists.txt' \) \
          -exec cmake-format -i {} \;
```
```bash
# https://github.com/googleapis/google-cloud-cpp/pull/807
find . \( -path ./.git \
          -o -path ./third_party \
          -o -path './cmake-build-*' \
          -o -path ./build-output \
       \) -prune \
       -o \( -name 'CMakeLists.txt' \
             -o -name '*.cmake' \
          \) -print0 \
    | xargs -0 cmake-format -i
```