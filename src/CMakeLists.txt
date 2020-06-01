#
include(one.cmake)
include(three.cmake)

add_custom_target(
  run ${MAIN_NAME}_one
  COMMAND ${MAIN_NAME}_three
)
#