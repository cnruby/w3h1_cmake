#
message("\nFROM cmake/CMakeLists.txt")
configure_file(
  ${PROJECT_SOURCE_DIR}/cmake/template/config.h.in
  ${PROJECT_SOURCE_DIR}/cmake/config/config.hxx
  # Restrict the form @VAR@ of template variable, NOT the form ${var}
  @ONLY
)

message("PROJECT_SOURCE_DIR \t\t= ${PROJECT_SOURCE_DIR}")
message("CMAKE_CURRENT_SOURCE_DIR\t= ${CMAKE_CURRENT_SOURCE_DIR}")
message("CMAKE_CURRENT_LIST_DIR\t\t= ${CMAKE_CURRENT_LIST_DIR}")
message("FROM cmake/CMakeLists.txt")
#
