#
# cmake -DPRORJECT_ID=basic_109 -P get-project.cmake
# cmake -DGET=1 -DPRORJECT_ID=basic_109 -P get-project.cmake
# cmake -DGET=0 -DPRORJECT_ID=basic_109 -P get-project.cmake
if(NOT DEFINED GET)
 set(GET 1)
else()
  if(${GET} STREQUAL "0")
    set(GET "")
  endif()
endif()

find_package(Git REQUIRED)
if(GIT_FOUND)
  if(GET)
    message("GIT_EXECUTABLE = ${GIT_EXECUTABLE}")
    execute_process(
      COMMAND ${GIT_EXECUTABLE} clone https://github.com/cnruby/w3h1_cmake.git ${PRORJECT_ID}
    )
    execute_process(
      COMMAND mv ${PRORJECT_ID}/.git .
    )
    execute_process(
      COMMAND rm -rf ${PRORJECT_ID}
      COMMAND ${GIT_EXECUTABLE} checkout ${PRORJECT_ID}
      COMMAND code .
    )
  endif()
  message("GIT_VERSION_STRING = ${GIT_VERSION_STRING}") 
else()
  message("GIT NOT FOUND: = ${GIT_FOUND}")
endif()
# cmake -DRUN=0 -DPRORJECT_ID=basic_109 -P get-project.cmake
# cmake -DRUN=1 -DPRORJECT_ID=basic_109 -P get-project.cmake
#
