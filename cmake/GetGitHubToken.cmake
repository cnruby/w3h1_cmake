if(NOT GITHUB_TOKEN)
  find_package(Git REQUIRED)
  message(STATUS "GIT_FOUND\t\t= ${GIT_FOUND}")
  if(GIT_FOUND)
    message(STATUS "GIT_EXECUTABLE\t= ${GIT_EXECUTABLE}")
    message(STATUS "GIT_VERSION_STRING\t= ${GIT_VERSION_STRING}")
      execute_process(
        # https://github.com/settings/tokens
        # git config --global github.token "YOUR_GITHUB_TOKEN"
        COMMAND ${GIT_EXECUTABLE} config github.token
        OUTPUT_VARIABLE GITHUB_TOKEN
        OUTPUT_STRIP_TRAILING_WHITESPACE
      )
    message(STATUS "GIT_REVISION\t\t= ${GIT_REVISION}")
  else()
    message(STATUS "Git NOT FOUND")
  endif(GIT_FOUND)
endif(GITHUB_TOKEN)