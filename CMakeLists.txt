cmake_minimum_required(
  VERSION 3.1...3.17.2
  FATAL_ERROR
)
set(
  CMAKE_CXX_STANDARD
  17
)
project(
  basic_136
  VERSION 0.1.0
  LANGUAGES CXX
  DESCRIPTION "Hello, Targets 2.0!"
)

include(cmake/GetMacro.cmake)
include(cmake/Initialize.cmake)
include(cmake/GetLocaleDir.cmake)
include(cmake/TargetAll.cmake)

# call CMake File 'CMakeLists.txt'
add_subdirectory(cmake)
add_subdirectory(src)
