#
add_executable(
  main_116
  main.cxx
)
target_include_directories(
  main_116
  PRIVATE ${PROJECT_CONIFG_DIR}
)

message("\nFROM src/CMakeLists.txt")
message("PROJECT_SOURCE_DIR \t\t= ${PROJECT_SOURCE_DIR}")
message("CMAKE_CURRENT_SOURCE_DIR \t= ${CMAKE_CURRENT_SOURCE_DIR}")
message("FROM src/CMakeLists.txt")
#
