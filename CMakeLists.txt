cmake_minimum_required(
  VERSION 3.17
  FATAL_ERROR
)
set(
  CMAKE_CXX_STANDARD
  17
)
project(
  basic_128
  VERSION 0.1.0
  LANGUAGES CXX
  DESCRIPTION "Hello, GitHub!"
)

include(cmake/Initialize.cmake)
include(cmake/GitFMT.cmake)

include_directories( ${_PROJECT_CONFIG_DIR} )

# call CMake File 'CMakeLists.txt'
add_subdirectory(cmake)
add_subdirectory(src)
