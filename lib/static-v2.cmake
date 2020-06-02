# add_library(
#   ${LIB_NAME}_oo
#   OBJECT header.cxx
# )
add_library(
  ${LIB_NAME}_ar
  STATIC $<TARGET_OBJECTS:${LIB_NAME}_o>
  #STATIC ${LIB_NAME}_o
)
