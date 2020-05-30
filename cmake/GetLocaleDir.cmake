#
if(CMAKE_SYSTEM_NAME STREQUAL "Linux")
  # For Ubuntu
  set(
    _SYSTEM_LOCALE_DIR
    /usr/share/locale
  )
elseif(CMAKE_SYSTEM_NAME STREQUAL "Darwin")
  # For MacOS
  set(
    _SYSTEM_LOCALE_DIR
    /usr/local/share/locale
  )
else()
  message(STATUS "Configuring `_SYSTEM_LOCALE_DIR` on/for SYSTEM LOCALE DIR}")
endif()
#
