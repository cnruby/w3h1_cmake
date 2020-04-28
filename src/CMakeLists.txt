#
add_executable(
  main_120
  main.cxx
)
target_include_directories(
  main_120
  PRIVATE ${LIB_DIR}/
)
target_link_libraries(main_120 lib_120)
#
