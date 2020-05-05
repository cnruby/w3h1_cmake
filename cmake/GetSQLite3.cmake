#
if(${OS_NAME} STREQUAL APPLE)
  set(SQLITE_INCLUDE_DIR /usr/local/opt/sqlite3/include)
  set(SQLITE_LIBRARY /usr/local/opt/sqlite3/lib/libsqlite3.a)
elseif(${OS_NAME} STREQUAL UBUNTU)
  set(SQLITE_INCLUDE_DIR /usr/include)
  set(SQLITE_LIBRARY /usr/lib/x86_64-linux-gnu/libsqlite3.so)
else()
endif()
#