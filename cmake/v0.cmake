#
# -DCMAKE_CONFIGURATION_TYPES="Debug;Release;RelWitDebInfo;MinSizeRel"
set(
  CMAKE_CONFIGURATION_TYPES "Debug;Release;RelWithDebInfo;MinRelSize;TestRelease"
  CACHE STRING "specifies available build types" FORCE )
# -DCMAKE_CROSS_CONFIGS="all"
set(
  CMAKE_CROSS_CONFIGS all
  CACHE STRING "create available config files" FORCE )

#