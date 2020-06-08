include(multi_config.cmake)
include(targets.cmake)

message(STATUS "_PROJECT_CONFIG_DIR\t\t= ${_PROJECT_CONFIG_DIR}")
configure_file(
  ${PROJECT_SOURCE_DIR}/cmake/config.h.in
  ${_PROJECT_CONFIG_DIR}/config.hxx
  @ONLY
)