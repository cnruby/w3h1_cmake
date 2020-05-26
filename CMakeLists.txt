cmake_minimum_required(
  VERSION 3.1...3.17
  FATAL_ERROR
)
set(
  CMAKE_CXX_STANDARD
  17
)
project(
  basic_134
  VERSION 0.1.0
  LANGUAGES CXX
  DESCRIPTION "Hello, COMPILE_DEFINITIONS!"
)

add_compile_definitions(
  ALL_TARGET_MACRO=100
)

set(
  CMAKE_RUNTIME_OUTPUT_DIRECTORY
  ${PROJECT_SOURCE_DIR}/_bin
)
set(LIB_NAME lib_134)
set( _ARC_OUTPUT_DIR ${PROJECT_SOURCE_DIR}/_ar )
set( _LIB_OUTPUT_DIR ${PROJECT_SOURCE_DIR}/_lib )
set(
  PROJECT_CONIFG_DIR
  ${PROJECT_SOURCE_DIR}/config/
)
set(
  PROJECT_LIB_DIR
  ${PROJECT_SOURCE_DIR}/lib/
)
include_directories(
  ${PROJECT_CONIFG_DIR}
)

# call CMake File 'CMakeLists.txt'
add_subdirectory(cmake)
add_subdirectory(src)
add_subdirectory(lib)

add_custom_target(
  rc
  DEPENDS rebuild_cache
)
add_custom_target(
  all_macro
  DEPENDS main_134 lib_134_a lib_134_so
)

# get_property(
#   DirDefs
#   DIRECTORY ${CMAKE_SOURCE_DIR}
#   PROPERTY COMPILE_DEFINITIONS
# )
get_directory_property(
  DirDefs
  COMPILE_DEFINITIONS
)
foreach( d ${DirDefs} )
  message( STATUS "Found Define: " ${d} )
endforeach()
message( STATUS "DirDefs: " ${DirDefs} )