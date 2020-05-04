cmake_minimum_required(
  VERSION 3.1...3.16
  FATAL_ERROR
)
set(
  CMAKE_CXX_STANDARD
  17
)
project(
  basic_124
  VERSION 0.1.0
  LANGUAGES CXX
  DESCRIPTION "basic_124 Hello, Module's Variables!"
)

include(cmake/Initialize.cmake)
include(cmake/GetLocaleDir.cmake)
include(cmake/TargetAll.cmake)

# call CMake File 'CMakeLists.txt'
add_subdirectory(cmake)
add_subdirectory(src)

# set(ENABLE_TARGETS "" CACHE
#     STRING "Targets to be built in demo simultaneously (default: none)")

# if(NOT "${ENABLE_TARGETS}" STREQUAL "")
#     add_custom_target(enabled_targets)
#     foreach(target IN LISTS ENABLE_TARGETS)
#         add_dependencies(enabled_targets ${target})
#     endforeach()
# endif()
