include(multi_config.cmake)
#include(v0.cmake)
#include(v1.cmake)
#include(v2.cmake)

configure_file(
  ${PROJECT_SOURCE_DIR}/cmake/config.h.in
  ${PROJECT_CONIFG_DIR}/config.hxx
  # Restrict the form @VAR@ of template variable, NOT the form ${var}
  @ONLY
)

