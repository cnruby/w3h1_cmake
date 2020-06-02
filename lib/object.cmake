#
# add_library(
#   ${LIB_NAME}_o
#   OBJECT header.cxx
# )
set_target_properties(
  ${LIB_NAME}_o
  PROPERTIES
    POSITION_INDEPENDENT_CODE 1
)

add_library(
  ${LIB_NAME}_shared
  SHARED $<TARGET_OBJECTS:${LIB_NAME}_o>
  #SHARED ${LIB_NAME}_o
)
set_target_properties(
  ${LIB_NAME}_shared
  PROPERTIES
    OUTPUT_NAME ${LIB_NAME}
    LIBRARY_OUTPUT_DIRECTORY ${_LIBRARY_OUTPUT_DIR}
)

add_library(
  ${LIB_NAME}_static
  STATIC $<TARGET_OBJECTS:${LIB_NAME}_o>
)
set_target_properties(
  ${LIB_NAME}_static
  PROPERTIES
    OUTPUT_NAME ${LIB_NAME}
    ARCHIVE_OUTPUT_DIRECTORY ${_ARCHIVE_OUTPUT_DIR}
)
#