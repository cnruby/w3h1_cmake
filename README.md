<h2>Hello, CircleCi!</h2>
<h3>How to Build C++ Project with CMake and CircleCI</h3>
</br>
</br>

[@Gitter](https://gitter.im/cnruby): gitter.im/cnruby<br/>
Code ID: basic_144</br>
Code Name: Hello, CircleCi!</br>
<p class ="fragment" data-audio-src="docs/144/audio/basic_144-01.m4a"></p>


<h2>TABLE of CONTENTS</h2>

- [References](#references)



<h1>Working ON</h1>



<img src="./docs/144/image/about_assets.png" alt="About The Project basic_144" height="100%" width="100%">

## About The Project
<p class ="fragment" data-audio-src="docs/144/audio/basic_144-03.m4a"></p>



## A Demonstration of Building Project
<video width="720" height="480" controls data-autoplay>
  <source src="docs/144/video/basic_144-07.mp4" autoplay=true type="video/mp4">
</video>



## References
- https://circleci.com/
- https://circleci.com/docs/2.0/getting-started/#section=getting-started
- http://gueepo.me/blog/simple-ci-for-cpp/
- https://thoughts-on-coding.com/2020/04/20/a-cpp-github-template-repository-utilizing-circleci-cmake-docker-and-doxygen/



### Requirements
- [Ubuntu 20.04+](https://ubuntu.com/)
- [VS Code 1.43.0+](https://code.visualstudio.com/)
- [CMake 3.17.3+](https://cmake.org/)




### Get The Code with Shell Commands
```bash
git clone https://github.com/cnruby/w3h1_cmake.git basic_144
cd basic_144
git checkout basic_144
code .
```



### The Structure of Folder
<!--{ "./docs/output/tree.txt" | code: bash }-->
```bash
.
├── cmake
│  ├── CMakeLists.txt
│  ├── config.hxx.in
│  ├── GetGitHubToken.cmake
│  └── publish.cmake
├── CMakeLists.txt
└── src
   ├── CMakeLists.txt
   └── main.cxx
```
<!--{ end }-->

