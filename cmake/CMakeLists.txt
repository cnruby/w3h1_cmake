#
find_package(Doxygen REQUIRED dot)
if (DOXYGEN_FOUND)
  set(DOXYGEN_OUTPUT_DIRECTORY      ${PROJECT_SOURCE_DIR}/build-docs) 
  set(DOXYGEN_EXTRACT_ALL            YES)
  set(DOXYGEN_BUILTIN_STL_SUPPORT    YES)
  set(DOXYGEN_WARN_NO_PARAMDOC       YES)
  set(DOXYGEN_HTML_OUTPUT            .)
  set(DOXYGEN_USE_MDFILE_AS_MAINPAGE README.md)
  set(DOXYGEN_FILE_PATTERNS           *.c *.cc *.cxx *.cpp *.c++ *.ii *.ixx *.ipp *.i++ *.inl *.h *.hh *.hxx *.hpp *.h++ *.inc README.md)
  doxygen_add_docs(
    target_doxygen   # cmake --build build --target target_doxygen
    ${PROJECT_SOURCE_DIR}                 # Sources root directory
    WORKING_DIRECTORY ${PROJECT_SOURCE_DIR} # change the directory used as the relative base poin
    COMMENT "Generate html pages"
  )
  #
  execute_process(
    COMMAND echo "cp docs"
    COMMAND mkdir -p ${PROJECT_SOURCE_DIR}/build-docs/docs/118/image
    COMMAND cp -rf ${PROJECT_SOURCE_DIR}/docs/118/image ${PROJECT_SOURCE_DIR}/build-docs/docs/118/
  )
else()
  message(STATUS "Doxygen not found, not building docs")
endif ()
message(STATUS "Doxygen Version: ${DOXYGEN_VERSION}")
#º