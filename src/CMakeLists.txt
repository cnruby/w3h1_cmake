#
add_executable( main_123 main.cxx )

target_include_directories( main_123 PRIVATE ${Intl_INCLUDE_DIRS} ${_PROJECT_CONFIG_DIR} )

target_link_directories ( main_123 PRIVATE ${Intl_LIBRARIES} )

target_link_libraries( main_123 PRIVATE Intl )
#
