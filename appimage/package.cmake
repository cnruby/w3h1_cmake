# ./appimage/package.cmake
#
# INPUT VARIABLES:
#     _DESTDIR
#     _SYSTEM_PROCESSOR
#     _APPIMAGE_RESOURCE_DIR
#     _APP_OUTPUT_DIRECTORY
#     _TOOL_INPUT_DIRECTORY
#     _APP_NAME
#

# install the app as appimage
add_custom_target(
  install_default
  #install_app
  # DESTDIR="../" ninja -C _build install
  ${CMAKE_COMMAND} -E env DESTDIR="${_DESTDIR}" cmake --build ${PROJECT_BINARY_DIR} --target install
  WORKING_DIRECTORY ${PROJECT_SOURCE_DIR}
)
add_custom_target(
  install_app
  # if ERROR: 'Could not find desktop file in AppDir'
  ${CMAKE_COMMAND} -E copy ${_APPIMAGE_RESOURCE_DIR}/${_MAIN_EXE}.desktop ${_DESTDIR}/${_MAIN_EXE}.desktop
  WORKING_DIRECTORY ${PROJECT_SOURCE_DIR}
  DEPENDS install_default
)


# package the app as appimage
add_custom_target(
  appimage
  ${CMAKE_COMMAND}
      -E env ARCH="${_SYSTEM_PROCESSOR}" VERSION="${PROJECT_VERSION}"
      ${_TOOL_INPUT_DIRECTORY}/linuxdeploy-${_SYSTEM_PROCESSOR}.AppImage --output appimage --appdir ${_DESTDIR}
  COMMAND ${CMAKE_COMMAND} -E make_directory ${_APP_OUTPUT_DIRECTORY}
  WORKING_DIRECTORY ${PROJECT_SOURCE_DIR}
)
add_custom_target(  
  pkg
  ${CMAKE_COMMAND} -E copy ${PROJECT_SOURCE_DIR}/${_APP_NAME} ${_APP_OUTPUT_DIRECTORY}/.
  DEPENDS appimage
  #WORKING_DIRECTORY ${PROJECT_SOURCE_DIR}
)
add_custom_target(
  package
  ${CMAKE_COMMAND} -E remove -f ${PROJECT_SOURCE_DIR}/${_APP_NAME}
  DEPENDS pkg
  WORKING_DIRECTORY ${PROJECT_SOURCE_DIR}
)

# download the tool `linuxdeploy`
add_custom_target(
  download_appimage
  ${CMAKE_COMMAND} -E make_directory ${_TOOL_INPUT_DIRECTORY}
  COMMAND wget -O ${_TOOL_INPUT_DIRECTORY}/linuxdeploy-${_SYSTEM_PROCESSOR}.AppImage 
       https://github.com/linuxdeploy/linuxdeploy/releases/download/continuous/linuxdeploy-${_SYSTEM_PROCESSOR}.AppImage
)
add_custom_target(
  get_linuxdeploy
  COMMAND chmod +x ${_TOOL_INPUT_DIRECTORY}/linuxdeploy*.AppImage
  DEPENDS download_appimage
)