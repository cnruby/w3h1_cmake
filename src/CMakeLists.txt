#
add_executable(
  main_122
  main.cxx
)
target_include_directories(
  main_122
  PRIVATE ${PROJECT_CONIFG_DIR}
)
# link against the boost libraries
target_link_libraries(
  main_122
  PRIVATE Boost::filesystem
)
#
