cmake_minimum_required(VERSION 3.0.0)

project(
  basic_126
  VERSION 0.1.0
  DESCRIPTION "Hello, Multiple Versions!"
  LANGUAGES CXX
)

set(
  CMAKE_CXX_STANDARD
  17
)

# Initialize
include(cmake/Initialize.cmake)
include(cmake/GetSQLite3.cmake)

add_subdirectory(cmake)
add_subdirectory(src)
