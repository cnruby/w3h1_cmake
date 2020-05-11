#
find_package(Boost REQUIRED COMPONENTS filesystem)
#find_package(Boost CONFIG REQUIRED COMPONENTS filesystem)
message(STATUS "Boost_VERSION\t\t= ${Boost_VERSION}")
message(STATUS "Boost_INCLUDE_DIRS\t\t= ${Boost_INCLUDE_DIRS}")
message(STATUS "Boost_LIBRARY_DIRS\t\t= ${Boost_LIBRARY_DIRS}")
message(STATUS "Boost_LIBRARIES\t\t= ${Boost_LIBRARIES}")
#