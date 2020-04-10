#
add_executable(
  b109
  main.cxx
)
# target_include_directories(
#    CXX_TARGET_NAME SCOPE_NAME INCLUDE_DIR_1 INCLUDE_DIR_N)
set(
  HXX_DIRS
  ${PROJECT_SOURCE_DIR}/include/
)
target_include_directories(
  b109
  PRIVATE ${HXX_DIRS} ${HXX_DIRS}/local/
)

# The differece between PROJECT_SOURCE_DIR and CMAKE_CURRENT_SOURCE_DIR
message(STATUS "PROJECT_SOURCE_DIR = ${PROJECT_SOURCE_DIR}/include/")
message(STATUS "CMAKE_CURRENT_SOURCE_DIR = ${CMAKE_CURRENT_SOURCE_DIR}/include/")

# ERROR
# target_include_directories(b109 PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/include/)
#
