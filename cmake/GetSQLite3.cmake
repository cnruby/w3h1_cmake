#
# Brew Install SQLite3
set(_BREW_SQLITE_INCLUDE_DIR /usr/local/opt/sqlite3/include)
set(_BREW_SQLITE_LIBRARY /usr/local/opt/sqlite3/lib/libsqlite3.dylib)
# MacOS Default SQLite3
set(_OS_SQLITE_INCLUDE_DIR /usr/include)
set(_OS_SQLITE_LIBRARY /usr/lib/libsqlite3.dylib)

add_library(Sqlite3Brew SHARED IMPORTED)
set_target_properties(Sqlite3Brew
  PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES ${_BREW_SQLITE_INCLUDE_DIR}
  IMPORTED_LOCATION ${_BREW_SQLITE_LIBRARY}
)

add_library(Sqlite3OS SHARED IMPORTED)
set_target_properties(Sqlite3OS
  PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES ${_OS_SQLITE_INCLUDE_DIR}
  IMPORTED_LOCATION ${_OS_SQLITE_LIBRARY}
)
#