//
#include <iostream>
#include <config.hxx>

int main(int, char**) {
  std::cout << PROJECT_DESCRIPTION << std::endl;
  std::cout << "MACRO=" << MACRO << std::endl << std::endl;

  return EXIT_SUCCESS;
}
//