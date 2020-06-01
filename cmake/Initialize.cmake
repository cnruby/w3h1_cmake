#
set(
  CMAKE_RUNTIME_OUTPUT_DIRECTORY
  ${PROJECT_SOURCE_DIR}/bin
)
set(
  _PROJECT_CONFIG_DIR
  ${PROJECT_SOURCE_DIR}/config/
)
set(
  _PROJECT_LIB_DIR
  ${PROJECT_SOURCE_DIR}/lib/
)

set( LIB_NAME lib_137 )
set( MAIN_NAME main_137 )

include_directories(
  ${_PROJECT_CONFIG_DIR} ${_PROJECT_LIB_DIR}
)

add_custom_target(
  rc
  DEPENDS rebuild_cache
)
#