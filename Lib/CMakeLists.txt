# GENERATOR_IS_MULTI_CONFIG
cmake_minimum_required(VERSION 3.9)

project(lib_main VERSION 0.1.0 LANGUAGES CXX DESCRIPTION "Hello, Multiple-Project's Library!" )

set(SRC_DIR impl)
set(INCLUDE_DIR include)

# Create library target "hello_lib"
add_library(hello_lib "${SRC_DIR}/hello.cxx" "${INCLUDE_DIR}/hello.hxx")
target_include_directories(
    hello_lib PUBLIC
    ${CMAKE_CURRENT_LIST_DIR}/${INCLUDE_DIR}
)
#