set(TARGET_NAME main_116)
add_executable(
  ${TARGET_NAME}
  main.cxx
)
target_include_directories(
  ${TARGET_NAME}
  PRIVATE ${_PROJECT_CONFIG_DIR}
)
