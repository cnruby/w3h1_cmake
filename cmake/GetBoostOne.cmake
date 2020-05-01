#
# find a library 'boost' with the component 'filesystem'
set(Boost_USE_MULTITHREADED TRUE)
find_package(Boost 1.72.0 REQUIRED COMPONENTS filesystem)

# check if Boost was found
if(Boost_FOUND)
    message(STATUS "Boost found")
    message(STATUS "Boost_VERSION_STRING\t\t= ${Boost_VERSION_STRING}")
    message(STATUS "Boost_INCLUDE_DIRS\t\t= ${Boost_INCLUDE_DIRS}")
    message(STATUS "Boost_LIBRARY_DIRS\t\t= ${Boost_LIBRARY_DIRS}")
    message(STATUS "Boost_LIBRARIES\t\t= ${Boost_LIBRARIES}")
    message(STATUS "Boost_FILESYSTEM_FOUND\t= ${Boost_FILESYSTEM_FOUND}")
    message(STATUS "Boost_FILESYSTEM_LIBRARY\t= ${Boost_FILESYSTEM_LIBRARY}")
else()
    message(FATAL_ERROR "Cannot find Boost")
endif()
#