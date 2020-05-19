#
set( _EXECUTE_NAME v4_main_132 )
add_custom_target(
  mkdir_v4
  mkdir -p ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}
)
add_custom_target(
  build_v4
  ALL
  COMMAND g++ -o ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/${_EXECUTE_NAME}
                 ${PROJECT_SOURCE_DIR}/src/main.cxx -I ${_PROJECT_CONIFG_DIR}
  DEPENDS mkdir_v4
)
add_custom_target(
  run_v4
  ./${_EXECUTE_NAME}
  WORKING_DIRECTORY ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}
)
#
