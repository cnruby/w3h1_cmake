#
# INPUT VARIABLE:
#     `_DOMAIN`
#     `_MAIN_EXE`
#     `_APPIMAGE_DIR`
#
execute_process(
  COMMAND ${CMAKE_COMMAND} -E
    copy ${_APPIMAGE_DIR}/resource/hello.desktop
         ${PROJECT_SOURCE_DIR}/_in/${_MAIN_EXE}.desktop
  COMMAND ${CMAKE_COMMAND} -E
    copy ${_APPIMAGE_DIR}/resource/hello.png
         ${_APPIMAGE_RESOURCE_DIR}/${_MAIN_EXE}.png
  COMMAND ${CMAKE_COMMAND} -E
    copy ${_APPIMAGE_DIR}/resource/hello.appdata.xml
         ${PROJECT_SOURCE_DIR}/_in/${_DOMAIN}.${_MAIN_EXE}.appdata.xml
)

configure_file(
  ${_APPIMAGE_DIR}/resource/hello.CMakeLists.txt
  ${_APPIMAGE_RESOURCE_DIR}/CMakeLists.txt
  @ONLY
)
configure_file(
  ${PROJECT_SOURCE_DIR}/_in/${_MAIN_EXE}.desktop
  ${_APPIMAGE_RESOURCE_DIR}/${_MAIN_EXE}.desktop
  @ONLY
)
configure_file(
  ${PROJECT_SOURCE_DIR}/_in/${_DOMAIN}.${_MAIN_EXE}.appdata.xml
  ${_APPIMAGE_RESOURCE_DIR}/${_DOMAIN}.${_MAIN_EXE}.appdata.xml
  @ONLY
)
