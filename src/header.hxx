#ifndef HEADER_H
#define HEADER_H
#include <iostream>

// 24*60*60 = 86400
#define SECONDS_IN_DAY 86400

// 24*60*60*1000 = 86400000
const unsigned int MILISECONDS_IN_DAY = 86400000;

class Header {
  const char* name;
  public:
  Header(const char*);
  void hello();
};

void Header::hello() { std::cout << "Hello, Default Include Paths from " << name << "!" << std::endl; }
Header::Header(const char* _name) {
  name = _name;
}

#endif