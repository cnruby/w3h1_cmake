cmake_minimum_required(
  VERSION 3.1...3.17.3
  FATAL_ERROR
)
set(
  CMAKE_CXX_STANDARD
  17
)
set(
  CMAKE_BUILD_TYPE "Debug"
  CACHE STRING "Default Build Type: Debug"
)
set(
  CMAKE_INSTALL_PREFIX "/_install/${CMAKE_BUILD_TYPE}"
  CACHE STRING "Default Install Prefix: ./_install/${CMAKE_BUILD_TYPE}"
)
set(
  _DESTDIR "../"
  CACHE STRING "DESTDIR Default: ../"
)

project(
  basic_141
  VERSION 0.141.2
  LANGUAGES CXX
  DESCRIPTION "Hello, install:DESTDIR!"
)


#include(GNUInstallDirs)

set(
  CMAKE_RUNTIME_OUTPUT_DIRECTORY
  ${PROJECT_SOURCE_DIR}/_bin
)
set(
  _PROJECT_CONFIG_DIR
  ${PROJECT_SOURCE_DIR}/config
)
set(
  _PROJECT_RESOURCE_DIR
  ${PROJECT_SOURCE_DIR}/resource
)

set(
  _MAIN_EXE
  main_141
)

add_subdirectory(cmake)
add_subdirectory(src)

