cmake_minimum_required(
  VERSION 3.1...3.17.3
  FATAL_ERROR
)
set(
  CMAKE_CXX_STANDARD
  17
)
project(
  basic_144
  VERSION 0.144.4
  LANGUAGES CXX
  DESCRIPTION "Hello, CircleCi!"
)

include(cmake/initialize.cmake)

add_subdirectory(cmake)
add_subdirectory(src)