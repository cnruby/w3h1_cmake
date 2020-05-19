cmake_minimum_required(
  VERSION 3.1...3.17
  FATAL_ERROR
)
set(
  CMAKE_CXX_STANDARD
  17
)
project(
  basic_132
  VERSION 0.1.0
  LANGUAGES CXX
  DESCRIPTION "Hello, Custom Target!"
)
set(
  CMAKE_RUNTIME_OUTPUT_DIRECTORY
  ${PROJECT_SOURCE_DIR}/bin-project
)
set(
  _RUNTIME_OUTPUT_DIR
  ${PROJECT_SOURCE_DIR}/bin-target
)
set(
  _PROJECT_CONIFG_DIR
  ${PROJECT_SOURCE_DIR}/config/
)
include_directories( ${_PROJECT_CONIFG_DIR} )

# call CMake File 'CMakeLists.txt'
add_subdirectory(cmake)
add_subdirectory(src)