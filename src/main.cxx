#include <iostream>
#include "config.hxx"

int main(int, char**) {
  std::cout << "Hello, C++ Configure File!!" << std::endl;

  std::cout << "PROJECT_NAME \t\t\t= " << PROJECT_NAME << std::endl;
  std::cout << "PROJECT_SOURCE_DIR \t\t= " << PROJECT_SOURCE_DIR << std::endl;
  std::cout << "CMAKE_CURRENT_SOURCE_DIR \t= " << CMAKE_CURRENT_SOURCE_DIR
            << std::endl;
  std::cout << "CMAKE_RUNTIME_OUTPUT_DIRECTORY \t= "
            << CMAKE_RUNTIME_OUTPUT_DIRECTORY << std::endl;

  std::cout << "_PROJECT_CONFIG_DIR \t\t= " << _PROJECT_CONFIG_DIR << std::endl;

  return 0;
}