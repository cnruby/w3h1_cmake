# ./cmake/package.cmake
#
# INPUT VARIABLE "_DESTDIR"
#

# install the app as appimage
add_custom_target(
  install_app
  # DESTDIR="../" ninja -C _build install
  ${CMAKE_COMMAND} -E env DESTDIR="${_DESTDIR}" cmake --build _build --target install
  WORKING_DIRECTORY ${PROJECT_SOURCE_DIR}
)

# package the app as appimage
set( TOOL_FOLDER "tool_" )
add_custom_target(
  appimage
  ${CMAKE_COMMAND}
      -E env ARCH="${_SYSTEM_PROCESSOR}" VERSION="${PROJECT_VERSION}"
      ${TOOL_FOLDER}/linuxdeploy-${_SYSTEM_PROCESSOR}.AppImage --appdir ${_DESTDIR} --output appimage
  COMMAND ${CMAKE_COMMAND} -E make_directory ${PROJECT_SOURCE_DIR}/_app
  WORKING_DIRECTORY ${PROJECT_SOURCE_DIR}
)
add_custom_target(  
  pkg
  ${CMAKE_COMMAND} -E copy ${PROJECT_SOURCE_DIR}/${_MAIN_EXE}*.AppImage ${PROJECT_SOURCE_DIR}/_app/.
  DEPENDS appimage
  WORKING_DIRECTORY ${PROJECT_SOURCE_DIR}
)
add_custom_target(
  package
  ${CMAKE_COMMAND} -E remove -f ${PROJECT_SOURCE_DIR}/${_MAIN_EXE}*.AppImage
  DEPENDS pkg
  WORKING_DIRECTORY ${PROJECT_SOURCE_DIR}
)

# download the tool `linuxdeploy`
add_custom_target(
  download_appimage
  ${CMAKE_COMMAND} -E make_directory ${PROJECT_SOURCE_DIR}/${TOOL_FOLDER}
  COMMAND wget -O ${PROJECT_SOURCE_DIR}/${TOOL_FOLDER}/linuxdeploy-${_SYSTEM_PROCESSOR}.AppImage 
       https://github.com/linuxdeploy/linuxdeploy/releases/download/continuous/linuxdeploy-${_SYSTEM_PROCESSOR}.AppImage
)
add_custom_target(
  get_linuxdeploy
  COMMAND chmod +x ${PROJECT_SOURCE_DIR}/${TOOL_FOLDER}/linuxdeploy*.AppImage
  DEPENDS download_appimage
)