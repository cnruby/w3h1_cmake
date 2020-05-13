cmake_minimum_required( VERSION 3.0 FATAL_ERROR )

set( CMAKE_CXX_STANDARD 17 )

project( basic_130 VERSION 0.1.0 LANGUAGES CXX DESCRIPTION "Hello, Multiple Projects!" )

add_subdirectory(Lib)
add_subdirectory(Main)
