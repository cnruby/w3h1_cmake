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

# archiv the release to artifacts
add_custom_target(
  zip_app
  ${CMAKE_COMMAND} -E chdir ${CMAKE_RUNTIME_OUTPUT_DIRECTORY} tar -zcvf ${_APP_NAME} ${_MAIN_EXE}
  COMMAND ${CMAKE_COMMAND} -E copy ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/${_APP_NAME} ${_APP_OUTPUT_DIRECTORY}
  WORKING_DIRECTORY ${_APP_OUTPUT_DIRECTORY}
)

# upload the release to Github Assets
add_custom_target(
  get_shasums
  ${CMAKE_COMMAND} -E sha1sum ${_APP_NAME} > ${_SHASUMS}
  WORKING_DIRECTORY ${_APP_OUTPUT_DIRECTORY}
)
add_custom_target(
  github_release
  # ghr [options...] TAG [PATH]
  # ghr -t <GITHUB_TOKEN> v<0.0.0> <APP.tar.gz>
  # ghr -t c346cbb4831ac04421379332d04a3e02dfa v1.0.0 app.tar.gz
  COMMAND ${_TOOL_INPUT_DIRECTORY}/${_GHR_APP}/ghr -t ${GITHUB_TOKEN} -n ${PROJECT_NAME} v${PROJECT_VERSION} ${_APP_OUTPUT_DIRECTORY}/${_APP_NAME}
  COMMAND ${_TOOL_INPUT_DIRECTORY}/${_GHR_APP}/ghr -t ${GITHUB_TOKEN} -n ${PROJECT_NAME} v${PROJECT_VERSION} ${_APP_OUTPUT_DIRECTORY}/${_SHASUMS}
  WORKING_DIRECTORY ${PROJECT_SOURCE_DIR}
  DEPENDS get_shasums
)

# download the tool `ghr`
add_custom_target(
  download_ghr
  COMMAND wget -O ${_TOOL_INPUT_DIRECTORY}/${_GHR_APP}.tar.gz 
            https://github.com/tcnksm/ghr/releases/download/v${_GHR_VERSION}/${_GHR_APP}.tar.gz 
)
add_custom_target(
  get_ghr
  ${CMAKE_COMMAND} -E tar xzf ${_TOOL_INPUT_DIRECTORY}/${_GHR_APP}.tar.gz
  DEPENDS download_ghr
  WORKING_DIRECTORY ${_TOOL_INPUT_DIRECTORY}
)
