#
find_package(Git REQUIRED)
message(STATUS "GIT_FOUND\t\t= ${GIT_FOUND}")
if(GIT_FOUND)
  message(STATUS "GIT_EXECUTABLE\t= ${GIT_EXECUTABLE}")
  message(STATUS "GIT_VERSION_STRING\t= ${GIT_VERSION_STRING}")
  execute_process(
    #COMMAND git rev-list --max-count=1 HEAD
    COMMAND ${GIT_EXECUTABLE} rev-list --max-count=1 HEAD
    # User-defined Variable "GIT_REVISION"
    OUTPUT_VARIABLE GIT_REVISION
    OUTPUT_STRIP_TRAILING_WHITESPACE
  )
  message(STATUS "GIT_REVISION\t\t= ${GIT_REVISION}")
else()
  message(STATUS "Git NOT FOUND")
endif(GIT_FOUND)

configure_file(
  ${PROJECT_SOURCE_DIR}/cmake/config.h.in
  ${PROJECT_SOURCE_DIR}/config/config.hxx
)

#
