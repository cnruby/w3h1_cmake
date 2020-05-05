#
add_executable(
  main_125
  main.cxx
)

target_include_directories(
  main_125 
  PRIVATE ${SQLITE_INCLUDE_DIR} ${_PROJECT_CONFIG_DIR}
)
target_link_libraries(
  main_125 
  PRIVATE ${SQLITE_LIBRARY})
#