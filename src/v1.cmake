#
add_executable(
  main_132        # define a target and executable name for build
  main.cxx        # c++ file name
)
add_custom_target(
  run             # define a custom target name for execute
  main_132        # executable file name
)
# cd build && ninja run       # ./bin/main_132
# cmake --build build/ --target run
#