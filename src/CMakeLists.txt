#
add_executable(
  main_119
  main.cxx
)
target_include_directories(
  main_119
  PRIVATE ${LIB_DIR}/
)
target_link_libraries(main_119 lib_119)
#
