#
add_executable(
  main_127 main.cxx
)

target_include_directories(
  main_127
  PRIVATE ${_PROJECT_CONFIG_DIR}
)

# link against the library
target_link_libraries(
  main_127
  PRIVATE Intl
)
#
