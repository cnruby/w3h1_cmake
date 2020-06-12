#include "header.hxx"

#include <iostream>

void Header::hello(const char* name) {
  std::cout << "Hello, Static Library from " << name << "!" << std::endl;
}
