#
# -DCMAKE_CONFIGURATION_TYPES="Debug;Release;RelWitDebInfo;MinSizeRel"
set(
  CMAKE_CONFIGURATION_TYPES "Debug;Release;RelWithDebInfo"
  CACHE STRING "specifies available build types" FORCE )
# -DCMAKE_CROSS_CONFIGS="all"
set(
  CMAKE_CROSS_CONFIGS all
  CACHE STRING "create available config files" FORCE )
set(
  CMAKE_DEFAULT_CONFIGS Release
  CACHE STRING "determine default config types" FORCE )
set(
  CMAKE_DEFAULT_BUILD_TYPE Debug
  CACHE STRING "determine A default build type" FORCE )
#