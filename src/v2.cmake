#
set( _BUILD_TARGET v2_main_132 )
add_executable(
  ${_BUILD_TARGET}
  main.cxx
)
target_include_directories(
  ${_BUILD_TARGET}
  PRIVATE ${_PROJECT_CONIFG_DIR}
)
add_custom_target(
  run_v2
  ${_BUILD_TARGET}
)
#