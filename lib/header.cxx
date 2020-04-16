#include <iostream>
#include "header.hxx"

void Header::hello(const char* name) {
  std::cout << "Hello, Static Library from " << name << "!" << std::endl;
}
