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
  basic_143
  VERSION 0.143.0
  LANGUAGES CXX
  DESCRIPTION "Hello, publish:Assets!"
)

set( _SYSTEM_PROCESSOR x86_64 )

set(_APPDIR _AppDir)
set(
  _DESTDIR "${PROJECT_SOURCE_DIR}/${_APPDIR}"
  CACHE STRING "DESTDIR Default: ${PROJECT_SOURCE_DIR}/${_APPDIR}"
)

#include(GNUInstallDirs)

set(
  CMAKE_RUNTIME_OUTPUT_DIRECTORY
  ${PROJECT_SOURCE_DIR}/_bin
)
set(
  _APP_OUTPUT_DIRECTORY
  ${PROJECT_SOURCE_DIR}/_app
)
set(
  _TOOL_INPUT_DIRECTORY
  ${PROJECT_SOURCE_DIR}/tool_
)
set(_RESOURCE resource_)
set(
  _APPIMAGE_RESOURCE_DIR
  ${PROJECT_SOURCE_DIR}/${_RESOURCE}
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