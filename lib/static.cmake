#
add_library(
  ${LIB_NAME}_a STATIC
  ${PROJECT_LIB_DIR}/header.cxx
)
set_target_properties(
  ${LIB_NAME}_a
  PROPERTIES
    ARCHIVE_OUTPUT_DIRECTORY ${_ARC_OUTPUT_DIR}
    COMPILE_DEFINITIONS STATIC_LIB=300
)

# set_target_properties(
#   ${LIB_NAME}_a
#   PROPERTIES
#     COMPILE_DEFINITIONS STATIC_LIB=300
# )

get_target_property(
  DirDefs
  ${LIB_NAME}_a
  COMPILE_DEFINITIONS
)
foreach( d ${DirDefs} )
  message( STATUS "Found Define: " ${d} )
endforeach()
message( STATUS "DirDefs: " ${DirDefs} )
#