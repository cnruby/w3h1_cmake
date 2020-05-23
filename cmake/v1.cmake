#
# -DCMAKE_CONFIGURATION_TYPES="Debug;Release;RelWitDebInfo;MinSizeRel"
set(
  CMAKE_CONFIGURATION_TYPES "Debug;Release;RelWithDebInfo"
  CACHE STRING "specifies available build types" FORCE )
# -DCMAKE_CROSS_CONFIGS="all"
set(
  CMAKE_CROSS_CONFIGS all
  CACHE STRING "create available config files" FORCE )
# -DCMAKE_DEFAULT_CONFIGS="all"
set(
  CMAKE_DEFAULT_CONFIGS all
  CACHE STRING "determine default config types" FORCE )
# -DCMAKE_DEFAULT_BUILD_TYPE="Debug"
set(
  CMAKE_DEFAULT_BUILD_TYPE Debug
  CACHE STRING "determine A default build type" FORCE )
#