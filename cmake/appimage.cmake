set(_RESOURCE resource_)
set(
  _PROJECT_RESOURCE_DIR
  ${PROJECT_SOURCE_DIR}/${_RESOURCE}
)
execute_process(
  COMMAND ${CMAKE_COMMAND} -E make_directory ${_PROJECT_RESOURCE_DIR}
  COMMAND ${CMAKE_COMMAND} -E touch ${_PROJECT_RESOURCE_DIR}/CMakeLists.txt
)

set(_APPIMAGE appimage)
set(
  _APPIMAGE_DIR
  ${PROJECT_SOURCE_DIR}/${_APPIMAGE}
)

set( _DOMAIN  io.github.cnruby)
set( _MAIN_EXE main_142 )
add_subdirectory(${_APPIMAGE})
add_subdirectory(${_RESOURCE})