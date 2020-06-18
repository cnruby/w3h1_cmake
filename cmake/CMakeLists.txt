include(targets.cmake)
include(GetGitHubToken.cmake)
include(publish.cmake)

message(STATUS "_PROJECT_CONFIG_DIR\t\t= ${_PROJECT_CONFIG_DIR}")
configure_file(
  ${PROJECT_SOURCE_DIR}/cmake/config.hxx.in
  ${_PROJECT_CONFIG_DIR}/config.hxx
  @ONLY
)