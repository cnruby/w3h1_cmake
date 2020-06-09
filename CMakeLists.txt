cmake_minimum_required(
  VERSION 3.1...3.17.3
  FATAL_ERROR
)
set(
  CMAKE_CXX_STANDARD
  17
)

set(
  CMAKE_CXX_STANDARD_REQUIRED
  ON
)

set(
  CMAKE_CXX_EXTENSIONS
  OFF
)

project(
  raw_116
  VERSION 0.1.0
  LANGUAGES CXX
  DESCRIPTION "raw_116 Hello, Configure File!"
)
set(
  CMAKE_RUNTIME_OUTPUT_DIRECTORY
  ${PROJECT_SOURCE_DIR}/_exe
)
set(
  _PROJECT_CONFIG_DIR
  ${PROJECT_SOURCE_DIR}/config/
)

include(cmake/Initialize.cmake)

add_subdirectory(cmake)
add_subdirectory(src)