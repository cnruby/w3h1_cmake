execute_process(
  COMMAND ${CMAKE_COMMAND} -E make_directory ${_APPIMAGE_RESOURCE_DIR}
  COMMAND ${CMAKE_COMMAND} -E touch ${_APPIMAGE_RESOURCE_DIR}/CMakeLists.txt
)

set(_APPIMAGE appimage)
set(
  _APPIMAGE_DIR
  ${PROJECT_SOURCE_DIR}/${_APPIMAGE}
)

set( _DOMAIN io.github.cnruby)
add_subdirectory(${_APPIMAGE})
add_subdirectory(${_RESOURCE})