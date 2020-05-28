cmake_minimum_required(
  VERSION 3.1...3.17.2
  FATAL_ERROR
)
set(
  CMAKE_CXX_STANDARD
  17
)
project(
  basic_135
  VERSION 0.1.0
  LANGUAGES CXX
  DESCRIPTION "Hello, Generator Expression!"
)

add_compile_definitions(
	#$<$<BOOL:$<TARGET_PROPERTY:TOOL>>:MACRO=$<TARGET_PROPERTY:TOOL>>
)

include(cmake/Initialize.cmake)
include(cmake/TargetAll.cmake)

# call CMake File 'CMakeLists.txt'
add_subdirectory(cmake)
add_subdirectory(src)

include(cmake/GetOutput.cmake)
