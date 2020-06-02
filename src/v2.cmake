#
add_executable(
  v2_${MAIN_NAME} main.cxx
)
target_link_libraries(
  v2_${MAIN_NAME}
  ${LIB_NAME}_o
)

target_compile_definitions(
  v2_${MAIN_NAME}
  PRIVATE MACRO_VERSION=2
)
#