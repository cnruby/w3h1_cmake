# ./cmake/publish.cmake
#
# INPUT VARIABLES:
#     _DESTDIR
#     _TOOL_INPUT_DIRECTORY
#     _APP_OUTPUT_DIRECTORY
#
set(_GHR_VERSION 0.13.0)
set(_GHR_APP ghr_v${_GHR_VERSION}_linux_amd64 )

# upload the release to Github Assets
add_custom_target(
  github_release
  ${CMAKE_COMMAND}
      -E ${_TOOL_INPUT_DIRECTORY}/${_GHR_APP}/ghr -n ${PROJECT_NAME} ${PROJECT_VERSION} ${_APP_OUTPUT_DIRECTORY}/*
  WORKING_DIRECTORY ${PROJECT_SOURCE_DIR}
  DEPENDS shasums
)
add_custom_target(
  shasums
  bash -c "sha1sum ${_APP_NAME}>v${PROJECT_VERSION}_SHASUMS"
  WORKING_DIRECTORY ${_APP_OUTPUT_DIRECTORY}
)

# download the tool `ghr`
add_custom_target(
  download_ghr
  ${CMAKE_COMMAND} -E make_directory ${_TOOL_INPUT_DIRECTORY}
  COMMAND wget -O ${_TOOL_INPUT_DIRECTORY}/${_GHR_APP}.tar.gz 
            https://github.com/tcnksm/ghr/releases/download/v${_GHR_VERSION}/${_GHR_APP}.tar.gz 
)
add_custom_target(
  get_ghr
  COMMAND tar -xf ${_TOOL_INPUT_DIRECTORY}/${_GHR_APP}.tar.gz
  DEPENDS download_ghr
  WORKING_DIRECTORY ${_TOOL_INPUT_DIRECTORY}
)
