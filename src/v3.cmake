#
set( _BUILD_TARGET v3_main_132 )
add_executable(
  ${_BUILD_TARGET} main.cxx
)
set_property(
  TARGET ${_BUILD_TARGET}
  PROPERTY RUNTIME_OUTPUT_DIRECTORY ${_RUNTIME_OUTPUT_DIR}
)
add_custom_target(
  run_v3
  ${_BUILD_TARGET}
  COMMENT "Run with working directory ${_RUNTIME_OUTPUT_DIR} configuration"
)
#
