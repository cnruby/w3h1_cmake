#
# include_directories(
#  INCLUDE_DIR_1 INCLUDE_DIR_2 INCLUDE_DIR_N
# )
include_directories(
  ${PROJECT_SOURCE_DIR}/include/local/
)
add_executable(
  main_110
  main.cxx
)
add_executable(
  major_110
  major.cxx
)
#