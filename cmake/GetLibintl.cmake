#
# FOR APPLE
set(_INTL_LIBRARY_DIR /usr/local/opt/gettext)
message(STATUS "_INTL_LIBRARY_DIR\t= ${_INTL_LIBRARY_DIR}")

# find a library 'libintl'
set(Intl_INCLUDE_DIR ${_INTL_LIBRARY_DIR}/include)
set(Intl_LIBRARY ${_INTL_LIBRARY_DIR}/lib)
message(STATUS "Intl_INCLUDE_DIR\t= ${Intl_INCLUDE_DIR}")
message(STATUS "Intl_LIBRARY\t\t= ${Intl_LIBRARY}")
find_package(Intl REQUIRED)

# check if Intl was found
if(Intl_FOUND)
  message(STATUS "Intl found\t\t= ${Intl_FOUND}")
  message(STATUS "Intl_INCLUDE_DIRS\t= ${Intl_INCLUDE_DIRS}")
  message(STATUS "Intl_LIBRARIES\t= ${Intl_LIBRARIES}")
else()
  message(FATAL_ERROR "Cannot find Intl")
endif()
#