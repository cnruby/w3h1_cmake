add_executable(
  v3_${MAIN_NAME} main.cxx
)
target_sources(
  v3_${MAIN_NAME}
  PRIVATE $<TARGET_OBJECTS:${LIB_NAME}_o>
)

target_compile_definitions(
  v3_${MAIN_NAME}
  PRIVATE MACRO_VERSION=3
)