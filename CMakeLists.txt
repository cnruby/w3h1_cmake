cmake_minimum_required( VERSION 3.17 FATAL_ERROR )
set( CMAKE_CXX_STANDARD 17 )
project( basic_131 VERSION 0.1.0 LANGUAGES CXX
  DESCRIPTION "Hello, Output!" )

set( CMAKE_RUNTIME_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/project-bin )
set( CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/project-ar )
set( CMAKE_LIBRARY_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/project-lib )

set( _MAIN_RUNTIME_OUTPUT_DIR ${PROJECT_SOURCE_DIR}/target-bin )
set( _ARC_RUNTIME_OUTPUT_DIR ${PROJECT_SOURCE_DIR}/target-ar )
set( _LIB_RUNTIME_OUTPUT_DIR ${PROJECT_SOURCE_DIR}/target-lib )

set( _MAIN_DIR ${PROJECT_SOURCE_DIR}/src/ )
set( _MAIN_SOURCE ${_MAIN_DIR}/main.cxx)
set( _LIB_DIR ${PROJECT_SOURCE_DIR}/lib/ )
set( _LIB_SOURCE ${_LIB_DIR}/impl/header.cxx)
include_directories( ${_LIB_DIR}/include/ )

set(_MAIN_TARGET main_131)
set(_STATIC_LIB_TARGET lib_131)
set(_SHARED_LIB_TARGET dylib_131)

add_subdirectory(src)
add_subdirectory(lib)
