#
set(
  CMAKE_RUNTIME_OUTPUT_DIRECTORY
  ${PROJECT_SOURCE_DIR}/_bin
)
set(
  _PROJECT_CONFIG_DIR
  ${PROJECT_SOURCE_DIR}/config/
)
set(
  _PROJECT_LIB_DIR
  ${PROJECT_SOURCE_DIR}/lib/
)
set(
  _ARCHIVE_OUTPUT_DIR
  ${PROJECT_SOURCE_DIR}/_ar/
)
set(
  _LIBRARY_OUTPUT_DIR
  ${PROJECT_SOURCE_DIR}/_lib/
)

set(
  _ARCHIVE_OUTPUT_DIRECTORY
  ${PROJECT_SOURCE_DIR}/_ar/
)

set( LIB_NAME lib_138 )
set( MAIN_NAME main_138 )

include_directories(
  ${_PROJECT_CONFIG_DIR} ${_PROJECT_LIB_DIR}
)

add_custom_target(
  rc
  DEPENDS rebuild_cache
)
#