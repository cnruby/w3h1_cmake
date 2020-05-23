#include <iostream>
#include "config.hxx"

int main(int, char**) {
  std::cout << "Project ID:\t\t\t" << PROJECT_NAME << std::endl;
  std::cout << "Project Code:\t\t\t" << PROJECT_DESCRIPTION << std::endl << std::endl;

  std::cout << "CMAKE_CONFIGURATION_TYPES:\t" << CMAKE_CONFIGURATION_TYPES << std::endl;
  std::cout << "CMAKE_CROSS_CONFIGS:\t\t" << CMAKE_CROSS_CONFIGS << std::endl;
  std::cout << "CMAKE_DEFAULT_CONFIGS:\t\t" << CMAKE_DEFAULT_CONFIGS << std::endl;
  std::cout << "CMAKE_DEFAULT_BUILD_TYPE:\t" << CMAKE_DEFAULT_BUILD_TYPE << std::endl;

  return EXIT_SUCCESS;
}