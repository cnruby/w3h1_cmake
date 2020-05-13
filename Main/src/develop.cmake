#
add_executable(
  main_130 src/main.cxx
)
target_include_directories(
  main_130 PRIVATE
  ${LIB_INCLUDE_DIR}
)
target_link_libraries(
  main_130
  ${LIB_LIB_DIR}/libhello_lib.a
)
#