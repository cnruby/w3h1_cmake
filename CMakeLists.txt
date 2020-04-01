cmake_minimum_required(VERSION 3.0.0)

project(basic_106 VERSION 0.1.0 DESCRIPTION "CMake's Scripting Language for Building Systems" LANGUAGES CXX)

message(STATUS "CMAKE_VERSION = ${CMAKE_VERSION}")

# Use the command 'include' with the keyword 'CMAKE_MODULE_PATH'
set(CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR}/cmake ${CMAKE_MODULE_PATH})
#list(APPEND CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR}/cmake)
include(CxxVersion)

# Use the command 'include' with path
include(${PROJECT_SOURCE_DIR}/cmake/SetVariables.cmake)

# Use the command 'add_subdirectory'
add_subdirectory(src)
