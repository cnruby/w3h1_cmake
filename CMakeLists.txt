cmake_minimum_required(
  VERSION 3.1...3.17.3
  FATAL_ERROR
)
set(
  CMAKE_CXX_STANDARD
  17
)
project(
  basic_138
  VERSION 0.1.0
  LANGUAGES CXX
  DESCRIPTION "Hello, Object Library!"
)

include(./cmake/Initialize.cmake)

# call CMake File 'CMakeLists.txt'
add_subdirectory(cmake)
add_subdirectory(src)
add_subdirectory(lib)

include(./cmake/GetOutput.cmake)