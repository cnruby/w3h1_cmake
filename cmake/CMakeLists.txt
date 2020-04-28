set(BUILD_DOC_DOXYGEN ${PROJECT_SOURCE_DIR}/build-doc-doxygen)

# connect sphinx to doxygen
set(DOXYGEN_XML_DIR ${BUILD_DOC_DOXYGEN}/xml/)
configure_file(
  ${PROJECT_SOURCE_DIR}/cmake/sphinx/conf.in.py
  ${PROJECT_SOURCE_DIR}/api/conf.py
  # Restrict the form @VAR@ of template variable, NOT the form ${var}
  @ONLY
)

add_subdirectory(doxygen)
add_subdirectory(sphinx)