cmake_minimum_required(
  VERSION 3.1...3.17
  FATAL_ERROR
)
set(
  CMAKE_CXX_STANDARD
  17
)
project(
  basic_121
  VERSION 0.1.0
  LANGUAGES CXX
  DESCRIPTION "basic_121 Hello, Third Party Library!"
)
set(
  CMAKE_RUNTIME_OUTPUT_DIRECTORY
  ${PROJECT_SOURCE_DIR}/bin
)
set(
  PROJECT_CONIFG_DIR
  ${PROJECT_SOURCE_DIR}/config/
)

# find a library 'linpng'
find_package(PNG 1.6.37 REQUIRED)

# check if 'linpng' was found
if(PNG_FOUND)
    message(STATUS "The library 'linpng' found")
    message(STATUS "PNG_VERSION_STRING\t\t= ${PNG_VERSION_STRING}")
    message(STATUS "PNG_INCLUDE_DIRS\t\t= ${PNG_INCLUDE_DIRS}")
    message(STATUS "PNG_LIBRARIES\t\t= ${PNG_LIBRARIES}")
else()
    message(FATAL_ERROR "Cannot find 'linpng'")
endif()


# call CMake File 'CMakeLists.txt'
add_subdirectory(cmake)
add_subdirectory(src)