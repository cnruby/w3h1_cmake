#include <iostream>
#include "header.hxx"
#include "config.hxx"

void Header::hello(const char* name) {
  if(STATIC_LIBRARY) {
    std::cout << "Hello, Static " << name << "!" << std::endl;
  }
  if (SHARED_LIBRARY) {
    std::cout << "Hello, Shared " << name << "!" << std::endl;
  }
}
