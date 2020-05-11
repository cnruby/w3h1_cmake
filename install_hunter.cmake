#
# cmake -Dversion=0.23.253 -P ./install_hunter.cmake
set(PROJECT_HUNTER_VERSION ${version})
message("hunter version = ${version}")

set(INSTALL_HUNTER_DIR hunter)
set(HUNTER_VERSION_TEMPLATE ${CMAKE_SOURCE_DIR}/template/HunterVersion.cmake.in)
# Get HunterGate.cmake
execute_process(
  COMMAND mkdir -p ${CMAKE_SOURCE_DIR}/${INSTALL_HUNTER_DIR}
  COMMAND wget https://raw.githubusercontent.com/cpp-pm/gate/master/cmake/HunterGate.cmake -O ${CMAKE_SOURCE_DIR}/${INSTALL_HUNTER_DIR}/HunterGate.cmake
)

# Get HunterVersion.cmake
execute_process(
  COMMAND mkdir -p ${CMAKE_SOURCE_DIR}/template
  COMMAND touch ${HUNTER_VERSION_TEMPLATE}
)
execute_process(
  COMMAND bash "-c" "echo 'include(./${INSTALL_HUNTER_DIR}/HunterGate.cmake)' > ${HUNTER_VERSION_TEMPLATE}"
)
execute_process(
  COMMAND bash "-c" "echo 'option(HUNTER_ENABLED \"Enable Hunter package manager support\" ON)' >> ${HUNTER_VERSION_TEMPLATE}"
)
execute_process(
  COMMAND bash "-c" "echo 'HunterGate(' >> ${HUNTER_VERSION_TEMPLATE}"
)
execute_process(
  COMMAND bash "-c" "echo '    URL \"https://github.com/cpp-pm/hunter/archive/@HUNTER_URL_VERSION@\"' >> ${HUNTER_VERSION_TEMPLATE}"
)
execute_process(
  COMMAND bash "-c" "echo '    SHA1 \"@HUNTER_SHA1@\"' >> ${HUNTER_VERSION_TEMPLATE}"
)
execute_process(
  COMMAND bash "-c" "echo ')' >> ${HUNTER_VERSION_TEMPLATE}"
)
set(HUNTER_URL_VERSION v${PROJECT_HUNTER_VERSION}.tar.gz)
execute_process(
  COMMAND wget https://github.com/cpp-pm/hunter/archive/${HUNTER_URL_VERSION} -O ${CMAKE_SOURCE_DIR}/${INSTALL_HUNTER_DIR}/${HUNTER_URL_VERSION}
)
execute_process(
  COMMAND bash "-c" "openssl sha1 -binary ${CMAKE_SOURCE_DIR}/${INSTALL_HUNTER_DIR}/${HUNTER_URL_VERSION} | xxd -p"
  OUTPUT_VARIABLE HUNTER_SHA1
  OUTPUT_STRIP_TRAILING_WHITESPACE
)
execute_process(
  COMMAND rm -rf ${CMAKE_SOURCE_DIR}/${INSTALL_HUNTER_DIR}/${HUNTER_URL_VERSION}
)
message(STATUS "PROJECT_HUNTER_VERSION = ${PROJECT_HUNTER_VERSION}")
message(STATUS "HUNTER_URL_VERSION = ${HUNTER_URL_VERSION}")
message(STATUS "HUNTER_SHA1 = ${HUNTER_SHA1}")
configure_file(
  ${HUNTER_VERSION_TEMPLATE}
  ${CMAKE_SOURCE_DIR}/${INSTALL_HUNTER_DIR}/HunterVersion.cmake
  @ONLY
)
#