#include <iostream>
#include "config.hxx"

#include "hello.hxx"

int main(int, char**) {
  std::cout << PROJECT_DESCRIPTION << std::endl;

  airspace::Hello::greet();
  return EXIT_SUCCESS;
}