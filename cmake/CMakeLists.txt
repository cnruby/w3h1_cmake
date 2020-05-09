#
#message("\nFROM cmake/CMakeLists.txt")
configure_file(
  ${PROJECT_SOURCE_DIR}/cmake/config.h.in
  ${PROJECT_SOURCE_DIR}/config/config.hxx
  # Restrict the form @VAR@ of template variable, NOT the form ${var}
  @ONLY
)
#message("FROM cmake/CMakeLists.txt")
#
