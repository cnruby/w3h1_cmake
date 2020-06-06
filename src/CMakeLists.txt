set(TARGET_NAME main_139)

add_executable(
  ${TARGET_NAME} main.cxx
)

target_include_directories(
  ${TARGET_NAME} PRIVATE
  $<BUILD_INTERFACE:${_PROJECT_CONFIG_DIR}>
)

# target_include_directories(
# 	${TARGET_NAME} PRIVATE
# 	${_PROJECT_CONFIG_DIR}
# )

include(install.cmake)
