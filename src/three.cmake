# ./src/three.cmake
add_library(
  ${MAIN_NAME}_o
  OBJECT main.cxx
)
add_executable(
  ${MAIN_NAME}_three
)
target_link_libraries(
  ${MAIN_NAME}_three
  ${LIB_NAME}_o ${MAIN_NAME}_o
)

target_compile_definitions(
  ${MAIN_NAME}_o
  #${MAIN_NAME}_three
  PRIVATE MACRO_VERSION=3
)
#