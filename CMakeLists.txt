cmake_minimum_required( VERSION 3.17.2 FATAL_ERROR )

set( CMAKE_CXX_STANDARD 17 )

project( basic_133 VERSION 0.1.0 LANGUAGES CXX DESCRIPTION "Hello, Ninja Multi-Config!" )

set(
  CMAKE_RUNTIME_OUTPUT_DIRECTORY
  ${PROJECT_SOURCE_DIR}/bin
)
set(
  PROJECT_CONIFG_DIR
  ${PROJECT_SOURCE_DIR}/config/
)

add_subdirectory(cmake)
add_subdirectory(src)
