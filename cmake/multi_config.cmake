#
#
# After the codes changed, must run one or more of the following command
#
# cmake --build/ build -UCMAKE_CONFIGURATION_TYPES
# cmake --build/ build -UCMAKE_CROSS_CONFIGS
# cmake --build/ build -UCMAKE_DEFAULT_CONFIGS
# cmake --build/ build -UCMAKE_DEFAULT_BUILD_TYPE
#
#
# -DCMAKE_CONFIGURATION_TYPES="Debug;Release;RelWitDebInfo;MinSizeRel"
# -DCMAKE_CONFIGURATION_TYPES="Debug;Release;RelWitDebInfo"
if(NOT CMAKE_CONFIGURATION_TYPES)
  set(
    CMAKE_CONFIGURATION_TYPES "Debug;Release;RelWithDebInfo"
    CACHE STRING "specifies available build types" FORCE )
endif()
if(NOT CMAKE_CROSS_CONFIGS)
  set(                                # -DCMAKE_CROSS_CONFIGS="all"
    CMAKE_CROSS_CONFIGS "all"
    #CMAKE_CROSS_CONFIGS "Debug;Release"
    CACHE STRING "create available config files" FORCE )
  endif()
if(NOT CMAKE_DEFAULT_CONFIGS)
  set(                                # -DCMAKE_DEFAULT_CONFIGS="Debug;Release"
    CMAKE_DEFAULT_CONFIGS "Debug;Release"
    CACHE STRING "determine default config types" FORCE )
endif()
if(NOT CMAKE_DEFAULT_BUILD_TYPE)
  set(                                # -DCMAKE_DEFAULT_BUILD_TYPE=Release
    CMAKE_DEFAULT_BUILD_TYPE "Release"
    CACHE STRING "determine A default build type" FORCE )
endif()

message(STATUS "CMAKE_CONFIGURATION_TYPES\t= ${CMAKE_CONFIGURATION_TYPES}")
message(STATUS "CMAKE_CROSS_CONFIGS\t\t= ${CMAKE_CROSS_CONFIGS}")
message(STATUS "CMAKE_DEFAULT_CONFIGS\t= ${CMAKE_DEFAULT_CONFIGS}")
message(STATUS "CMAKE_DEFAULT_BUILD_TYPE\t= ${CMAKE_DEFAULT_BUILD_TYPE}")
#