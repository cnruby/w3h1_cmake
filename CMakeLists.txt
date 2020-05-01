cmake_minimum_required(
  VERSION 3.1...3.17
  FATAL_ERROR
)
set(
  CMAKE_CXX_STANDARD
  17
)
project(
  basic_122
  VERSION 0.1.0
  LANGUAGES CXX
  DESCRIPTION "Hello, Library's Components!"
)

set(CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR}/cmake ${CMAKE_MODULE_PATH})
include(Initialize)
include(GetBoostOne)

# call CMake File 'CMakeLists.txt'
add_subdirectory(cmake)
add_subdirectory(src)