#include "header.hxx"

#include <iostream>

void Header::hello(const char* name) {
  std::cout << "Hello, " << name << "!" << std::endl
            << std::endl;
}

char Header::maxChar(char s, char t) {
  char v;
  if (s < t)
    v = t;
  else
    v = s;
  return v;
}

short maxShort(short x, short y) {
  short z = 0;
  if (x < y)
    z = y;
  else
    z = x;
  return z;
}