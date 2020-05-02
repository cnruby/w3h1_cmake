cmake_minimum_required(
  VERSION 3.1...3.16
  FATAL_ERROR
)
set(
  CMAKE_CXX_STANDARD
  17
)
project(
  basic_123
  VERSION 0.1.0
  LANGUAGES CXX
  DESCRIPTION "basic_123 Hello, Module's Variables!"
)

#set(CMAKE_MODULE_PATH)
include(${PROJECT_SOURCE_DIR}/cmake/Initialize.cmake)
include(${PROJECT_SOURCE_DIR}/cmake/GetLocaleDir.cmake)
include(${PROJECT_SOURCE_DIR}/cmake/GetLibintl.cmake)
#find_package(Intl REQUIRED)

# call CMake File 'CMakeLists.txt'
add_subdirectory(cmake)
add_subdirectory(src)