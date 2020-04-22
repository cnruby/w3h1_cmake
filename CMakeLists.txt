cmake_minimum_required(VERSION 3.0.0)

project(basic_118 VERSION 0.1.0 DESCRIPTION "Hello, Doxygen!" LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/bin)

add_subdirectory(src)
add_subdirectory(cmake)