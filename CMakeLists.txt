cmake_minimum_required(VERSION 3.0.0)

project(
  basic_119
  VERSION 0.1.0
  DESCRIPTION "Hello, Module!"
  LANGUAGES CXX
)

set(CMAKE_MODULE_PATH "${PROJECT_SOURCE_DIR}/cmake/module" ${CMAKE_MODULE_PATH})
message(STATUS "CMAKE_MODULE_PATH = ${CMAKE_MODULE_PATH}")

set(
  CMAKE_CXX_STANDARD
  17
)
set(
  CMAKE_RUNTIME_OUTPUT_DIRECTORY
  ${PROJECT_SOURCE_DIR}/bin
)
set(
  LIB_DIR
  ${PROJECT_SOURCE_DIR}/lib/
)

add_subdirectory(lib)
add_subdirectory(src)
add_subdirectory(cmake)
