cmake_minimum_required(
  VERSION 3.1...3.16
  FATAL_ERROR
)
set(
  CMAKE_CXX_STANDARD
  17
)
project(
  basic_117
  VERSION 0.1.0
  LANGUAGES CXX
  DESCRIPTION "basic_117 Hello, Package!"
)
set(
  CMAKE_RUNTIME_OUTPUT_DIRECTORY
  ${PROJECT_SOURCE_DIR}/bin
)
set(
  PROJECT_CONIFG_DIR
  ${PROJECT_SOURCE_DIR}/config/
)

# call CMake File 'CMakeLists.txt'
add_subdirectory(cmake)
add_subdirectory(src)
