#
cmake_minimum_required(
  VERSION 3.1...3.16
  FATAL_ERROR
)
set(
  CMAKE_CXX_STANDARD
  17
)
project(
  basic_111
  VERSION 0.1.0
  LANGUAGES CXX
  DESCRIPTION "basic_111 Hello, C++ Library!"
)
set(
  CMAKE_RUNTIME_OUTPUT_DIRECTORY
  ${PROJECT_SOURCE_DIR}/bin
)

add_subdirectory(include/local)
add_subdirectory(src)
#