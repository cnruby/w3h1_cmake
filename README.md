<h1>Hello Application with 'CMake' "basci_101"</h1>

* [Youtube Video](https://youtu.be/I2-fIgkGfy8)

<h2>TABLE of CONTENTS</h2>

- [WHAT does The 'CMake'?](#what-does-the-cmake)
- [WHY do We need The 'CMake'?](#why-do-we-need-the-cmake)
- [WHERE](#where)
  - [Where is The 'CMake' on the web?](#where-is-the-cmake-on-the-web)
  - [Where is The 'CMake' executable on MacOS?](#where-is-the-cmake-executable-on-macos)
- [HOW do We Use The 'CMake'?](#how-do-we-use-the-cmake)
  - [GET The Project](#get-the-project)
  - [BUILD AND RUN The Project](#build-and-run-the-project)
- [REFERENCES](#references)
  - [the 'CMake'](#the-cmake)
  - [W3H1](#w3h1)


## WHAT does The 'CMake'?

![image](./uml/what/what.png)

## WHY do We need The 'CMake'?

![image](./uml/why/why.png)

## WHERE

### Where is The 'CMake' on the web?

- [CMake](https://cmake.org)

### Where is The 'CMake' executable on MacOS?

```bash
which cmake
# >> /usr/local/bin/cmake
```

## HOW do We Use The 'CMake'?

### GET The Project

```bash
git clone https://github.com/cnruby/w3h1_cmake.git basic_101
cd basic_101
git checkout basic_101
```

### BUILD AND RUN The Project

```bash
cmake -B build/
cmake --build build/
./bin/main
```

## REFERENCES

### the 'CMake'

- https://cmake.org/cmake/help/latest/manual/cmake-compile-features.7.html
- https://cmake.org/cmake/help/v3.17/prop_gbl/CMAKE_CXX_KNOWN_FEATURES.html

### W3H1

- https://stackoverflow.com/questions/12236642/what-does-cmake-do
- https://stackoverflow.com/questions/40083642/why-do-we-need-cmake
- https://stackoverflow.com/questions/17525153/how-exactly-does-cmake-work
- https://stackoverflow.com/questions/16844454/where-is-the-cmake-executable-on-ubuntu
- https://cgold.readthedocs.io/en/latest/first-step/installation.html
-
