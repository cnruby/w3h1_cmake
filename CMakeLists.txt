cmake_minimum_required(
  VERSION 3.1...3.17.3
  FATAL_ERROR
)
set(
  CMAKE_CXX_STANDARD
  17
)
set(
  CMAKE_BUILD_TYPE "Release"
  CACHE STRING "Default Build Type: Release" FORCE
)

project(
  basic_139
  VERSION 0.1.0
  LANGUAGES CXX
  DESCRIPTION "Hello, install:exe!"
)

#include(GNUInstallDirs)

set(
  CMAKE_RUNTIME_OUTPUT_DIRECTORY
  ${PROJECT_SOURCE_DIR}/_bin
)

set(
  RUNTIME_INSTALL_DIRECTORY
  ${PROJECT_SOURCE_DIR}/_install
)

set(
  _PROJECT_CONFIG_DIR
  ${PROJECT_SOURCE_DIR}/config
)

add_subdirectory(cmake)
add_subdirectory(src)

