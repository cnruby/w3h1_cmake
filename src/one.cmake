# ./src/one.cmake
add_executable(
  ${MAIN_NAME}_one
  main.cxx
)
target_link_libraries(
  ${MAIN_NAME}_one
  ${LIB_NAME}_o
)

target_compile_definitions(
  ${MAIN_NAME}_one
  PRIVATE MACRO_VERSION=1
)
#