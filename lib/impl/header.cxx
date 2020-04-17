#include "header.hxx"

#include <iostream>

Header::Header(const char* _name){
  name = _name;
}
void Header::hello() {
  std::cout << "Hello, Library from Different Source " << name << "!" << std::endl;
}