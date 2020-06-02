#
add_executable(
  v1_${MAIN_NAME} main.cxx
)
target_link_libraries(
  v1_${MAIN_NAME}
  ${LIB_NAME}_static
)

target_compile_definitions(
  v1_${MAIN_NAME}
  PRIVATE MACRO_VERSION=1
)
#