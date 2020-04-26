# CMake find_package() Module for Sphinx documentation generator
# http://sphinx-doc.org/
#
# Example usage:
#
# find_package(Sphinx)
#
# .. command:: sphinx_add_docs

#   This function is intended as a convenience for adding a target for generating
#   documentation with Sphinx. It aims to provide sensible defaults so that
#   projects can generally just provide the input files and directories and that
#   will be sufficient to give sensible results. The function supports the
#   ability to customize the Sphinx configuration used to build the
#   documentation.

#   ::
#     sphinx_add_docs(targetName source_dir destination_dir)
# 
#     sphinx_add_docs(
#         targetName
#         source_dir
#         destination_dir
#     )
#
# If successful the following variables will be defined
# SPHINX_FOUND
# SPHINX_VERSION

macro(_Sphinx_find_doxygen)
  find_program(SPHINX_EXECUTABLE
             NAMES sphinx-build
             PATHS
               /usr/bin
               /usr/local/bin
               /opt/local/bin
             DOC "Path to sphinx-build executable"
  )

  mark_as_advanced(SPHINX_EXECUTABLE)
    
  if(SPHINX_EXECUTABLE)
      execute_process(
        COMMAND "${SPHINX_EXECUTABLE}" --version
        OUTPUT_VARIABLE SPHINX_VERSION
        OUTPUT_STRIP_TRAILING_WHITESPACE
        RESULT_VARIABLE _Sphinx_version_result
    )
    if(_Sphinx_version_result)
        message(WARNING "Unable to determine doxygen version: ${_Sphinx_version_result}")
    endif()
  endif()

  # Provide options for controlling different types of output
  option(SPHINX_OUTPUT_HTML "Output standalone HTML files" ON)
  option(SPHINX_WARNINGS_AS_ERRORS "When building documentation treat warnings as errors" ON)

  function( sphinx_add_docs target_name source destination )
    add_custom_target( ${target_name} ALL
      COMMAND ${SPHINX_EXECUTABLE} -b html
      ${source}
      ${destination}
      COMMENT "Generating sphinx documentation: ${builder}"
      )

    set_property(
      DIRECTORY APPEND PROPERTY
      ADDITIONAL_MAKE_CLEAN_FILES
      ${destination}
      )
  endfunction()
endmacro()

_Sphinx_find_doxygen()

# Handle REQUIRED and QUIET arguments
# this will also set SPHINX_FOUND to true if SPHINX_EXECUTABLE exists
include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(Sphinx
                                  "Failed to locate sphinx-build executable"
                                  SPHINX_EXECUTABLE)

if(SPHINX_EXECUTABLE)
  set(SPHINX_FOUND TRUE)
else()
  set(SPHINX_FOUND FALSE)
endif()