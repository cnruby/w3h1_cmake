#include <iostream>

#include "header.hxx"
#include "local/header.hxx"

int main(int, char**) {
  Header::hello();

  std::cout << "SECONDS_IN_DAY:\t\t" << SECONDS_IN_DAY << std::endl;
  std::cout << "MILISECONDS_IN_DAY:\t" << MILISECONDS_IN_DAY << std::endl;

  return 0;
}
