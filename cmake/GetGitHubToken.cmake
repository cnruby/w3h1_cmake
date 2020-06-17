if(NOT AUTH_TOKEN)
  find_package(Git REQUIRED)
  message(STATUS "GIT_FOUND\t\t= ${GIT_FOUND}")
  if(GIT_FOUND)
    message(STATUS "GIT_EXECUTABLE\t= ${GIT_EXECUTABLE}")
    message(STATUS "GIT_VERSION_STRING\t= ${GIT_VERSION_STRING}")
      execute_process(
        COMMAND ${GIT_EXECUTABLE} config github.token
        OUTPUT_VARIABLE AUTH_TOKEN
        OUTPUT_STRIP_TRAILING_WHITESPACE
      )
    message(STATUS "GIT_REVISION\t\t= ${GIT_REVISION}")
  else()
    message(STATUS "Git NOT FOUND")
  endif(GIT_FOUND)
endif(AUTH_TOKEN)
