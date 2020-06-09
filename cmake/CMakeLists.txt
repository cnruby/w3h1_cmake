configure_file(
  ${PROJECT_SOURCE_DIR}/cmake/config.h.in
  ${_PROJECT_CONFIG_DIR}/config.hxx
  # Restrict the form @VAR@ of template variable, NOT the form ${var}
  @ONLY
)