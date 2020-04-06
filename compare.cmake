#
# compare.cmake
set(STYLES LLVM Google Chromium Mozilla WebKit Microsoft)

foreach(style ${STYLES})
  message("C/C++ style = <<${style}>>")
  set(MAIN_CXX ${CMAKE_CURRENT_SOURCE_DIR}/src/main)
  set(CMD
      "clang-format -style=${style} ${MAIN_CXX}.cxx > \
                    ${MAIN_CXX}.${style}.cpp")
  message(${CMD})
  execute_process(COMMAND clang-format -style=${style} \
                          ${MAIN_CXX}.cxx
                  OUTPUT_FILE ${MAIN_CXX}.${style}.cpp)
endforeach()
#