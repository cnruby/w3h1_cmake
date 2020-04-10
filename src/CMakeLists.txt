#
add_executable(b109 main.cxx)

# target_include_directories(
#     CXX_TARGET_NAME
#     SCOPE_NAME
#     INCLUDE_DIR_1
#     INCLUDE_DIR_N
target_include_directories(
    b109
    PRIVATE 
    ${PROJECT_SOURCE_DIR}/include/
    ${PROJECT_SOURCE_DIR}/include/local/
)

# The differece between PROJECT_SOURCE_DIR and CMAKE_CURRENT_SOURCE_DIR
message(STATUS
  "PROJECT_SOURCE_DIR = ${PROJECT_SOURCE_DIR}/include/")
message(STATUS
  "CURRENT_SOURCE_DIR = ${CMAKE_CURRENT_SOURCE_DIR}/include/")

#target_include_directories(b109 PRIVATE 
#    ${CMAKE_CURRENT_SOURCE_DIR}/include/)
#