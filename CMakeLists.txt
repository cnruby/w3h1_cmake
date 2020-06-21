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
  CMAKE_INSTALL_PREFIX "/usr"
  CACHE STRING "Default Install Prefix: /usr"
)
project(
  basic_142
  VERSION 0.142.0
  LANGUAGES CXX
  DESCRIPTION "Hello, package:AppImage!"
)

set(
  _DESTDIR "${PROJECT_SOURCE_DIR}/_AppDir"
  CACHE STRING "DESTDIR Default: ${PROJECT_SOURCE_DIR}/_AppDir"
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
  ${PROJECT_SOURCE_DIR}/config_
)

include(cmake/appimage.cmake)

add_subdirectory(cmake)
add_subdirectory(src)