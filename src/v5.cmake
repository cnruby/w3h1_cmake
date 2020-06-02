#
add_library(
  ${MAIN_NAME}_o
  OBJECT main.cxx
)
add_executable(
  v5_${MAIN_NAME} $<TARGET_OBJECTS:${MAIN_NAME}_o> $<TARGET_OBJECTS:${LIB_NAME}_o>
)
target_compile_definitions(
  ${MAIN_NAME}_o
  PRIVATE MACRO_VERSION=5
)
#