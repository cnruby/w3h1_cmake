# ./cmake/targets.cmake
add_custom_target(
  ge
  bash -c "(echo ''; echo 'BEGIN GENERATOR EXPRESSION')"
  COMMAND echo "$<BUILD_INTERFACE:${_PROJECT_CONFIG_DIR}>"
  COMMAND ls -l $<BUILD_INTERFACE:${_PROJECT_CONFIG_DIR}>
  COMMAND bash -c "(echo 'END GENERATOR EXPRESSION'; echo '')"
  VERBATIM
)

add_custom_target(
  rc
  DEPENDS rebuild_cache
)