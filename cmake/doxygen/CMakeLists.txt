#
# /Applications/CMake.app/Contents/share/cmake-3.17/Modules/FindDoxygen.cmake
message(STATUS "^BEGIN FROM cmake/doxygen/CMakeLists.txt")
set(
  CMAKE_SUPPRESS_DEVELOPER_WARNINGS
  1
  CACHE INTERNAL "No dev warnings"
)

find_package(Doxygen REQUIRED dot)
if(DOXYGEN_FOUND)
  set(
    DOXYGEN_OUTPUT_DIRECTORY
    ${BUILD_DOC_DOXYGEN}
  )
  set(
    DOXYGEN_EXTRACT_ALL
    YES
  )
  set(
    DOXYGEN_BUILTIN_STL_SUPPORT
    YES
  )
  set(
    DOXYGEN_WARN_NO_PARAMDOC
    YES
  )
  set(
    DOXYGEN_HTML_OUTPUT
    ./html
  )
  set(
    DOXYGEN_GENERATE_XML
    YES
  )
  set(
    DOXYGEN_XML_OUTPUT
    ./xml
  )
  set(
    DOXYGEN_USE_MDFILE_AS_MAINPAGE
    README.md
  )
  set(
    DOXYGEN_FILE_PATTERNS
    *.c
    *.cc
    *.cxx
    *.cpp
    *.c++
    *.ii
    *.ixx
    *.ipp
    *.i++
    *.inl
    *.h
    *.hh
    *.hxx
    *.hpp
    *.h++
    *.inc
    README.md
  )
  doxygen_add_docs(
    target_doxygen # cmake --build build --target target_doxygen
    ${PROJECT_SOURCE_DIR} # Sources root directory
    WORKING_DIRECTORY
    ${PROJECT_SOURCE_DIR} # change the directory used as the relative base poin
    COMMENT
    "Generate html pages"
  )

  # optinal
  execute_process(
    COMMAND echo "cp ${PROJECT_SOURCE_DIR}/docs/html"
    COMMAND mkdir -p ${BUILD_DOC_DOXYGEN}/html/docs/120/image
    COMMAND cp -rf ${PROJECT_SOURCE_DIR}/docs/120/image
            ${BUILD_DOC_DOXYGEN}/html/docs/120/
  )
else()
  message(STATUS "Doxygen not found, not building docs")
endif()

message(STATUS "Doxygen Version\t\t= ${DOXYGEN_EXECUTABLE} ${DOXYGEN_VERSION}")
message(STATUS "Doxygen Input DIR\t\t= ${PROJECT_SOURCE_DIR}")
message(STATUS "Doxygen Output DIR\t\t= ${BUILD_DOC_DOXYGEN}")
message(STATUS "$END FROM cmake/doxygen/CMakeLists.txt")
#
