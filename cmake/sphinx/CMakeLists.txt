message(STATUS "^BEGIN FROM cmake/sphinx/CMakeLists.txt")

set(
  BUILD_DOC_SPHINX
  ${PROJECT_SOURCE_DIR}/build-doc-sphinx
)

find_package(Sphinx REQUIRED)
if(SPHINX_FOUND)
  message("-- Build the Sphinx HTML documentation.")
  set(
    SPHINX_INPUT_DIR
    ${PROJECT_SOURCE_DIR}/api/
  )
  set(
    SPHINX_OUTPUT_DIR
    ${BUILD_DOC_SPHINX}/_build
  )
  sphinx_add_docs(target_sphinx ${SPHINX_INPUT_DIR} ${SPHINX_OUTPUT_DIR})

  # optinal
  execute_process(COMMAND mkdir -p ${BUILD_DOC_SPHINX}/_build/)
else()
  message("-- Failed to find Sphinx, disabling build of documentation.")
endif()
message(STATUS "SPHINX_VERSION\t\t= ${SPHINX_VERSION}")
message(STATUS "SPHINX INPUT DIR\t\t= ${SPHINX_INPUT_DIR}")
message(STATUS "SPHINX OUTPUT DIR\t\t= ${BUILD_DOC_SPHINX}")
message(STATUS "$END FROM cmake/sphinx/CMakeLists.txt")
