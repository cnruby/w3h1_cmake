#
list(APPEND os_options $<TARGET_PROPERTY:OS> )
list(APPEND tool_options $<TARGET_PROPERTY:TOOL> )
add_compile_definitions(
  $<$<BOOL:${os_options}>:MACRO_OS=${os_options}>
  $<$<BOOL:${tool_options}>:MACRO_TOOL=${tool_options}>
)
#