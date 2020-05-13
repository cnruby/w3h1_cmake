#
add_executable(main_130 src/main.cxx)
# Method 1
target_link_libraries(main_130 hello_lib)

# Method 2
#add_library(Any::alias ALIAS hello_lib)
#target_link_libraries(main_130 Any::alias)
#