#
set( _BUILD_TARGET v5_main_132 )
add_custom_target(
  mkdir_v5
  mkdir -p ${_RUNTIME_OUTPUT_DIR}
)
add_custom_target(
  run_v5              # define a custom target name for build and execute
  ALL
  g++ -o ${_RUNTIME_OUTPUT_DIR}/${_BUILD_TARGET}
         ${PROJECT_SOURCE_DIR}/src/main.cxx
      -I ${_PROJECT_CONIFG_DIR}
  COMMAND ./${_BUILD_TARGET}
  WORKING_DIRECTORY ${_RUNTIME_OUTPUT_DIR}
  DEPENDS mkdir_v5
  COMMENT "Working Directory: ${_RUNTIME_OUTPUT_DIR}"
)
#
