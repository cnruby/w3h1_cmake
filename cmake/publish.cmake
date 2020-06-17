# ./cmake/publish.cmake
#
# INPUT VARIABLES:
#     _APP_NAME
#     _TOOL_INPUT_DIRECTORY
#     _APP_OUTPUT_DIRECTORY
#
set(_GHR_VERSION 0.13.0)
set(_GHR_APP ghr_v${_GHR_VERSION}_linux_amd64 )
set(_SHASUMS ${_APP_NAME}_SHASUMS)

add_custom_target(
  zip_app
  ${CMAKE_COMMAND} -E chdir ${CMAKE_RUNTIME_OUTPUT_DIRECTORY} tar -zcvf ${_APP_NAME} ${_MAIN_EXE}
  COMMAND ${CMAKE_COMMAND} -E copy ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/${_APP_NAME} ${_APP_OUTPUT_DIRECTORY}
  COMMAND ${CMAKE_COMMAND} -E rm ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/${_APP_NAME}
  WORKING_DIRECTORY ${_APP_OUTPUT_DIRECTORY}
)

# upload the release to Github Assets
add_custom_target(
  github_release_local
  ${_TOOL_INPUT_DIRECTORY}/${_GHR_APP}/ghr -n ${PROJECT_NAME} v${PROJECT_VERSION} ${_APP_OUTPUT_DIRECTORY}/${_APP_NAME}
  COMMAND
    ${_TOOL_INPUT_DIRECTORY}/${_GHR_APP}/ghr -n ${PROJECT_NAME} v${PROJECT_VERSION} ${_APP_OUTPUT_DIRECTORY}/${_SHASUMS}
  WORKING_DIRECTORY ${PROJECT_SOURCE_DIR}
  DEPENDS get_shasums zip_app
)

add_custom_target(
  github_release_circleci
  ${_TOOL_INPUT_DIRECTORY}/${_GHR_APP}/ghr -t ${AUTH_TOKEN} -n ${PROJECT_NAME} v${PROJECT_VERSION} ${_APP_OUTPUT_DIRECTORY}/${_APP_NAME}
  COMMAND
    ${_TOOL_INPUT_DIRECTORY}/${_GHR_APP}/ghr -t ${AUTH_TOKEN} -n ${PROJECT_NAME} v${PROJECT_VERSION} ${_APP_OUTPUT_DIRECTORY}/${_SHASUMS}
  WORKING_DIRECTORY ${PROJECT_SOURCE_DIR}
  DEPENDS get_shasums zip_app
)

add_custom_target(
  get_shasums
  ${CMAKE_COMMAND} -E sha1sum ${_APP_NAME} > ${_SHASUMS}
  WORKING_DIRECTORY ${_APP_OUTPUT_DIRECTORY}
)

# download the tool `ghr`
add_custom_target(
  download_ghr
  ${CMAKE_COMMAND} -E make_directory ${_APP_OUTPUT_DIRECTORY}
  COMMAND ${CMAKE_COMMAND} -E make_directory ${_TOOL_INPUT_DIRECTORY}
  COMMAND wget -O ${_TOOL_INPUT_DIRECTORY}/${_GHR_APP}.tar.gz 
            https://github.com/tcnksm/ghr/releases/download/v${_GHR_VERSION}/${_GHR_APP}.tar.gz 
)
add_custom_target(
  get_ghr
  ${CMAKE_COMMAND} -E tar xzf ${_TOOL_INPUT_DIRECTORY}/${_GHR_APP}.tar.gz
  DEPENDS download_ghr
  WORKING_DIRECTORY ${_TOOL_INPUT_DIRECTORY}
)
