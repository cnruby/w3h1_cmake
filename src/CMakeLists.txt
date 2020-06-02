#
include(v1.cmake)
include(v2.cmake)
include(v3.cmake)
include(v4.cmake)
#include(v5.cmake)

add_custom_target(
  run v1_${MAIN_NAME}
  COMMAND v2_${MAIN_NAME}
  COMMAND v3_${MAIN_NAME}
  COMMAND v4_${MAIN_NAME}
  COMMAND v5_${MAIN_NAME}
)
#