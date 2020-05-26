#
set( TARGET_MAIN main_134)
add_executable(
  ${TARGET_MAIN} main.cxx
)
target_include_directories(
  ${TARGET_MAIN}
  PRIVATE ${PROJECT_LIB_DIR}
)

target_compile_definitions(
  ${TARGET_MAIN}
  PRIVATE
  #TARGET_MAIN_MARCO=200;IS_MAIN
)

# for the file static.cmake
target_link_libraries(
  ${TARGET_MAIN}
  ${LIB_NAME}_a
)

add_custom_target(
  run ${TARGET_MAIN}
)

get_target_property( DirDefs main_134 COMPILE_DEFINITIONS )
foreach( d ${DirDefs} )
  message( STATUS "Found Define: " ${d} )
endforeach()
message( STATUS "DirDefs: " ${DirDefs} )
#
