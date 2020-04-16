#
add_executable(
  main_113
  main.cxx
)
target_include_directories(
  main_113
  PRIVATE
  ${LIB_DIR}/
)
target_link_libraries(main_113 lib_113)
#