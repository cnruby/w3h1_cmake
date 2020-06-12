cmake_minimum_required(
  VERSION 3.1...3.16
  FATAL_ERROR
)
set(
  CMAKE_CXX_STANDARD
  17
)
project(
  basic_113
  VERSION 0.1.0
  LANGUAGES CXX
  DESCRIPTION "basic_113 Hello, Static Library!"
)
set(
  CMAKE_RUNTIME_OUTPUT_DIRECTORY
  ${PROJECT_SOURCE_DIR}/bin
)

set(
  LIB_DIR
  ${PROJECT_SOURCE_DIR}/lib/
)

add_subdirectory(src)
add_subdirectory(lib)
