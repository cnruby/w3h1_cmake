# ./lib/three.cmake
add_library(
  ${LIB_NAME}_o
  OBJECT header.cxx
)
add_library(
  ${LIB_NAME}_ar STATIC
)
target_link_libraries(
  ${LIB_NAME}_ar
  ${LIB_NAME}_o
)