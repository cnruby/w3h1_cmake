#
add_library(
  lib_114 STATIC
  ${LIB_DIR}/impl/header.cxx
)
target_include_directories(
  lib_114
  PRIVATE ${LIB_DIR}/include/
)
#
