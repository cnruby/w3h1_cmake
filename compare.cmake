#
# The File compare.cmake
set(STYLES LLVM Google Chromium Mozilla WebKit Microsoft)
foreach(style ${STYLES})
  message("C/C++ style = <<${style}>>")
  set(MAIN ${CMAKE_CURRENT_SOURCE_DIR}/src/main)
  set(CMD
      "clang-format -style=${style} ${MAIN}.cxx > \
                    ${MAIN}.${style}.cpp")
  message(${CMD})
  execute_process(COMMAND clang-format -style=${style} ${MAIN}.cxx
                  OUTPUT_FILE ${MAIN}.${style}.cpp)
endforeach()
#