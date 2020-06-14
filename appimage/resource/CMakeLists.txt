#
# INPUT VARIABLE:
#     `_DOMAIN`
#     `_MAIN_EXE`
#     `_APPIMAGE_DIR`
#
execute_process(
  COMMAND ${CMAKE_COMMAND} -E
    copy ${_APPIMAGE_DIR}/resource/hello.desktop
         ${_APPIMAGE_DIR}/_in/${_MAIN_EXE}.desktop
  COMMAND ${CMAKE_COMMAND} -E
    copy ${_APPIMAGE_DIR}/resource/hello.png
         ${_PROJECT_RESOURCE_DIR}/${_MAIN_EXE}.png
  COMMAND ${CMAKE_COMMAND} -E
    copy ${_APPIMAGE_DIR}/resource/hello.appdata.xml
         ${_APPIMAGE_DIR}/_in/${_DOMAIN}.${_MAIN_EXE}.appdata.xml
)

configure_file(
  ${_APPIMAGE_DIR}/resource/hello.CMakeLists.txt
  ${_PROJECT_RESOURCE_DIR}/CMakeLists.txt
  @ONLY
)
configure_file(
  ${_APPIMAGE_DIR}/_in/${_MAIN_EXE}.desktop
  ${_PROJECT_RESOURCE_DIR}/${_MAIN_EXE}.desktop
  @ONLY
)
configure_file(
  ${_APPIMAGE_DIR}/_in/${_DOMAIN}.${_MAIN_EXE}.appdata.xml
  ${_PROJECT_RESOURCE_DIR}/${_DOMAIN}.${_MAIN_EXE}.appdata.xml
  @ONLY
)
