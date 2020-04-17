#
add_executable(
  main_114
  main.cxx
)
target_include_directories(
  main_114
  PRIVATE ${LIB_DIR}/include/
)
target_link_libraries(main_114 lib_114)
#
