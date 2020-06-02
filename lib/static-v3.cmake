# add_library(
#   ${LIB_NAME}_ooo
#   OBJECT header.cxx
# )
add_library(
  ${LIB_NAME}_arc STATIC
)
target_link_libraries(
  ${LIB_NAME}_arc
  ${LIB_NAME}_o
)