#include "header.hxx"

#include <iostream>

Header::Header()
  :s('h'), t('z')
{}

Header::Header(char a, char b)
  :s(a), t(b)
{}

void Header::hello(const char* name) {
  std::cout << "Hello, Static Library from " << name << "!" << std::endl
            << std::endl;
}

char Header::maxChar() {
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