#
add_executable( brew_main_126 main_brew.cxx )
target_include_directories(
  brew_main_126 PRIVATE ${_PROJECT_CONFIG_DIR}
)
target_link_libraries(
  brew_main_126 PRIVATE Sqlite3Brew
)

add_executable( os_main_126 main_os.cxx )
target_include_directories(
  os_main_126 PRIVATE ${_PROJECT_CONFIG_DIR}
)
target_link_libraries(
  os_main_126 PRIVATE Sqlite3OS
)
#