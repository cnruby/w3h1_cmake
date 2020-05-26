//
#include <iostream>

#include "config.hxx"
#include "header.hxx"

int main(int, char**) {
  std::cout << "Project ID:\t\t\t" << PROJECT_NAME << std::endl;
  std::cout << "Project Code:\t\t\t" << PROJECT_DESCRIPTION << std::endl;
  std::cout << "ALL_MACRO:\t\t\t" << ALL_MACRO << std::endl;
  std::cout << "MAIN_MACRO:\t\t\t" << MAIN_MACRO << std::endl;
  //std::cout << "ALL_TARGET_MACRO:\t\t" << ALL_TARGET_MACRO << std::endl;
  //std::cout << "TARGET_MAIN_MACRO:\t\t" << TARGET_MAIN_MACRO << std::endl;
  std::cout << "SECONDS_IN_DAY:\t\t\t" << SECONDS_IN_DAY << std::endl;
  std::cout << "MILISECONDS_IN_DAY:\t\t" << MILISECONDS_IN_DAY << std::endl << std::endl;

  Header header;
  header.hello("Library");

  #ifdef TARGET_MAIN_MACRO
    std::cout << "Hallo, Welt from TARGET_MAIN_MACRO!" << std::endl;
  #endif
  #ifdef ALL_TARGET_MACRO
    std::cout << "Hello, World from ALL_TARGET_MACRO!" << std::endl;
  #endif
  std::cout << "\n\n" << std::endl;

  return 0;
}
//