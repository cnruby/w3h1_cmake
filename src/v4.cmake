add_executable(
  v4_${MAIN_NAME}
  main.cxx
  $<TARGET_OBJECTS:${LIB_NAME}_o>
  #$<TARGET_OBJECTS:${LIB_NAME}_static>
)

target_compile_definitions(
  v4_${MAIN_NAME}
  PRIVATE MACRO_VERSION=4
)