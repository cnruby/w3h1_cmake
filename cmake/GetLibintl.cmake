#
message("\nFROM cmake/GetLibintl.txt")
# find a library 'libintl'
find_package(Intl REQUIRED)

# check if Intl was found
if(Intl_FOUND)
  message(STATUS "Intl found\t\t= ${Intl_FOUND}")
  message(STATUS "Intl_INCLUDE_DIRS\t= ${Intl_INCLUDE_DIRS}")
  message(STATUS "Intl_LIBRARIES\t= ${Intl_LIBRARIES}")
else()
  message(FATAL_ERROR "Cannot find Intl")
endif()
message("FROM cmake/GetLibintl.txt")
#