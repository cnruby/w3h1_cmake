#
add_executable(
  main_133
  main.cxx
)
target_include_directories(
  main_133
  PRIVATE ${PROJECT_CONIFG_DIR}
)
add_custom_target(
  run
  main_133
)
#
