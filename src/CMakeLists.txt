#
add_executable( ${_MAIN_TARGET} ${_MAIN_SOURCE} )

set_property(
  TARGET ${_MAIN_TARGET}
  PROPERTY RUNTIME_OUTPUT_DIRECTORY ${_MAIN_RUNTIME_OUTPUT_DIR}
)

target_link_libraries(${_MAIN_TARGET} ${_STATIC_LIB_TARGET})
#target_link_libraries(${_MAIN_TARGET} ${_SHARED_LIB_TARGET})
#
