// ./src/main.cxx
#include <iostream>
#include "config.hxx"
#include "header.hxx"
#include "macro.hxx"

int main(int, char**) {
  std::cout << "Project ID:\t\t\t" << PROJECT_NAME << std::endl;
  std::cout << "Project Code:\t\t\t" << PROJECT_DESCRIPTION << std::endl;
  std::cout << "Project Version:\t\t" << MACRO_VERSION << std::endl << std::endl;

  Header header;
  header.hello("Library");

  std::cout << "Hello, Main!" << std::endl;

  return 0;
}
//