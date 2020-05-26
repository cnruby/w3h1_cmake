#
add_library(
  ${LIB_NAME}_so SHARED
  ${PROJECT_LIB_DIR}/header.cxx
)
set_target_properties(
  ${LIB_NAME}_so
  PROPERTIES
    LIBRARY_OUTPUT_DIRECTORY ${_LIB_OUTPUT_DIR}
    COMPILE_DEFINITIONS SHARED_LIB=400
)

# set_property(
#   TARGET ${LIB_NAME}_so
#   PROPERTY 
#     COMPILE_DEFINITIONS SHARED_LIB=400
# )
get_target_property(
  DirDefs
  ${LIB_NAME}_so COMPILE_DEFINITIONS )
foreach( d ${DirDefs} )
  message( STATUS "Found Define: " ${d} )
endforeach()
message( STATUS "DirDefs: " ${DirDefs} )
#
