#
list(APPEND main_src main.cxx)

add_executable( apt_main_136 ${main_src} )
set_target_properties( apt_main_136
  PROPERTIES
    OS 100
    TOOL 1
)
add_executable( debconf_main_136 ${main_src} )
set_target_properties( debconf_main_136
  PROPERTIES
    OS 100
    TOOL 2
)
add_executable( git_main_136 ${main_src} )
set_target_properties( git_main_136
  PROPERTIES
    TOOL 3
)
#
