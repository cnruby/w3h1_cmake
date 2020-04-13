#
add_library(lib_111 INTERFACE)
target_include_directories(
  lib_111
  INTERFACE
  ${PROJECT_SOURCE_DIR}/include/local/
)
#