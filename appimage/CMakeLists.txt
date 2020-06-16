set(_APP_NAME ${_MAIN_EXE}-${PROJECT_VERSION}-${_SYSTEM_PROCESSOR}.AppImage)

add_subdirectory(resource)
include(package.cmake)
include(publish.cmake)