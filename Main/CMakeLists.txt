#
cmake_minimum_required(VERSION 3.3)
project(cxx_main VERSION 0.1.0 LANGUAGES CXX DESCRIPTION "Hello, Multiple-Project's Main!" )

include("cmake/Initialize.cmake")
add_subdirectory(cmake)
include_directories(${PROJECT_CONIFG_DIR})

if(TARGET hello_lib)
  message(STATUS "The Library Target 'hello_lib' exists!")
  # Project "basic_113"
  include("src/integrate.cmake")
else()
  message(STATUS "The Library Target 'hello_lib' exists not.")
  # Project "basic_125"
  include("src/develop.cmake")
endif()
#