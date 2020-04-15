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
  basic_112
  VERSION 0.1.0
  LANGUAGES CXX
  DESCRIPTION "basic_112 Hello, Default Include Paths!"
)
set(
  CMAKE_RUNTIME_OUTPUT_DIRECTORY
  ${PROJECT_SOURCE_DIR}/bin
)

add_subdirectory(src)
#