#
message("\nFROM cmake/Initialize.txt")
message(STATUS "CMAKE_VERSION\t= ${CMAKE_VERSION}")
set(
  CMAKE_RUNTIME_OUTPUT_DIRECTORY
  ${PROJECT_SOURCE_DIR}/bin
)
set(
  _PROJECT_CONFIG_DIR
  ${PROJECT_SOURCE_DIR}/config/
)
#
