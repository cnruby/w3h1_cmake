cmake_minimum_required( VERSION 3.17 FATAL_ERROR )
# For Hunter 1/3
#set(version 0.23.253)
#include("./installt_hunter.cmake")

# For Hunter 2/3: Please set hunter_add_package *before* project command
include("hunter/HunterVersion.cmake")

set( CMAKE_CXX_STANDARD 17 )
project( basic_129 VERSION 0.1.0 LANGUAGES CXX DESCRIPTION "Hello, Hunter!" )

# For Hunter 3/3: Please set hunter_add_package *after* project command
include("hunter/HunterAdd.cmake")

include("cmake/GetBoost.cmake")
include("cmake/Initialize.cmake")
include_directories( PRIVATE ${PROJECT_CONIFG_DIR} )

# call CMake File 'CMakeLists.txt'
add_subdirectory(cmake)
add_subdirectory(src)
#