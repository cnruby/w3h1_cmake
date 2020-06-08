#include <iostream>
#include "config.hxx"

int main(int, char**) {
  std::cout << "Project ID:\t\t\t" << PROJECT_NAME << std::endl;
  std::cout << "Project Code:\t\t\t" << PROJECT_DESCRIPTION << std::endl;
  std::cout << "Project Build Type:\t\t" << DEFAULT_BUILD_TYPE << std::endl;

  return EXIT_SUCCESS;
}