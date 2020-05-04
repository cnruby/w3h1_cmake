#
message("\nFROM cmake/CMakeLists.txt")
set(
  LANG
  $ENV{LANG}
)
configure_file(
  ${PROJECT_SOURCE_DIR}/cmake/config.h.in
  ${PROJECT_SOURCE_DIR}/config/config.hxx
  # Restrict the form @VAR@ of template variable, NOT the form ${var}
  @ONLY
)

message(STATUS "LANG\t\t\t= ${LANG}")
message("FROM cmake/CMakeLists.txt\n")
#
