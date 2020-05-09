#
#message("\nFROM cmake/GitFMT.cmake")
# FetchContent added in CMake 3.11, downloads during the configure step
include(FetchContent)
# Formatting library
FetchContent_Declare(
  fmtlib
  # https://github.com/fmtlib/fmt
  GIT_REPOSITORY https://github.com/fmtlib/fmt.git
  # https://github.com/fmtlib/fmt/releases/tag/6.2.0
  GIT_TAG        6.2.0
)
FetchContent_MakeAvailable(fmtlib)
# Adds fmt::fmt
#message("\nFROM cmake/GitFMT.cmake")
#