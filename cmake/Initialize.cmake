#
message("\nFROM cmake/Initialize.txt")
message(STATUS "CMAKE_VERSION\t= ${CMAKE_VERSION}")
set(
  CMAKE_RUNTIME_OUTPUT_DIRECTORY
  ${PROJECT_SOURCE_DIR}/bin
)
set(
  _PROJECT_CONFIG_DIR
  ${PROJECT_SOURCE_DIR}/config/
)
execute_process(
  COMMAND mkdir -p ${PROJECT_SOURCE_DIR}/db
)

if(CMAKE_HOST_SYSTEM_NAME STREQUAL "Darwin")
  set(OS_NAME "APPLE")
  message(STATUS ">>>> Found ${CMAKE_HOST_SYSTEM_NAME} <<<<")
elseif(CMAKE_HOST_SYSTEM_NAME STREQUAL "Linux")
  file(READ "/etc/issue" ETC_ISSUE)
  string(REGEX MATCH "Ubuntu" DIST ${ETC_ISSUE})
  if(DIST STREQUAL "Ubuntu")
    set(OS_NAME UBUNTU)
    message(STATUS ">>>> Found ${DIST} <<<<")
  elseif()
    message(STATUS ">>>> Found unknown distribution <<<<")
  endif()
endif()
message("FROM cmake/Initialize.txt")
#