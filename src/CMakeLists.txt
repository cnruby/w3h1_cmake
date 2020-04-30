#
add_executable(
  main_121
  main.cxx
)
target_include_directories(
  main_121
  PRIVATE ${PROJECT_CONIFG_DIR}
)
# link against the library 'libpng'
target_link_libraries(
  main_121
  PRIVATE PNG::PNG
)
#
