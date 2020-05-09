#
#message("\nFROM src/CMakeLists.txt")
add_executable( main_128 main.cxx )

#target_link_libraries(main_128 PRIVATE fmt::fmt)
target_link_libraries(main_128 PRIVATE fmt)

#message("FROM src/CMakeLists.txt")
#
