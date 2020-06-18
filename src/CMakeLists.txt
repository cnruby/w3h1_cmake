add_executable(${_MAIN_EXE} main.cxx)
target_include_directories(
  ${_MAIN_EXE}
  PRIVATE ${_PROJECT_CONFIG_DIR}
)