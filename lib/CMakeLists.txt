#
add_library(
  lib_115 STATIC
  ${LIB_DIR}/impl/header.cxx
)
target_include_directories(
    lib_115
    PUBLIC
    ${LIB_DIR}/include/
)
#
