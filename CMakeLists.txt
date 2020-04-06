cmake_minimum_required(VERSION 3.0.0)
set(CMAKE_CXX_STANDARD 17)
project(c3 VERSION 0.1.0 LANGUAGES CXX DESCRIPTION "Formatting the '<code>C/C++</code>'s Codes")

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/bin)

add_executable(main src/main.cxx)
