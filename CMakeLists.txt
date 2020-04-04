cmake_minimum_required(VERSION 3.0.0)

# project(basic_106 VERSION 0.1.0 DESCRIPTION "CMake's Scripting Language for
# Building Systems" LANGUAGES CXX)
project(
  basic_107
  VERSION 0.1.0
  DESCRIPTION "How to Format the 'CMake's File"
  LANGUAGES CXX)

add_custom_command(
  OUTPUT ${CMAKE_CURRENT_BINARY_DIR}
  COMMAND
    # cmake-format: off
    cmake-format CMakeLists.txt 
        --separate-ctrl-name-with-space True
        --line-ending unix
        --keyword-case upper
        --command-case lower
    # cmake-format: on
)

message(STATUS "CMAKE_VERSION = ${CMAKE_VERSION}")
set(CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR}/cmake ${CMAKE_MODULE_PATH})
include(CxxVersion)
include(${PROJECT_SOURCE_DIR}/cmake/SetVariables.cmake)
add_subdirectory(src)
