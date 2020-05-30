#
message(STATUS "OS is ${CMAKE_SYSTEM_NAME}")
if(CMAKE_SYSTEM_NAME STREQUAL "Linux")
  # For Ubuntu
  include_directories(${_PROJECT_CONFIG_DIR})
elseif(CMAKE_SYSTEM_NAME STREQUAL "Darwin")
  # For MacOS
  include(cmake/GetLibintl.cmake)
  include_directories(${Intl_INCLUDE_DIRS} ${_PROJECT_CONFIG_DIR})
  link_directories(${Intl_LIBRARIES})
  link_libraries( Intl )
else()
  message(STATUS "Configuring Library 'libintl' on/for ${CMAKE_SYSTEM_NAME}")
endif()
#