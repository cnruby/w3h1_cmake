add_library(
  ${LIB_NAME}_o
  OBJECT header.cxx
)

include(object.cmake)
include(static-v1.cmake)
include(static-v2.cmake)
include(static-v3.cmake)
