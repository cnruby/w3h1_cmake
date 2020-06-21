cmake_minimum_required(
  VERSION 3.1...3.17.3
  FATAL_ERROR
)
set(
  CMAKE_CXX_STANDARD
  17
)
project(
  basic_140
  VERSION 0.140.3
  LANGUAGES CXX
  DESCRIPTION "Hello, install:multi!"
)

set(TARGET_NAME main_140)

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