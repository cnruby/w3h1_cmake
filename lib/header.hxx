#ifndef HEADER_H
#define HEADER_H
#include <iostream>

// 24*60*60 = 86400
#ifdef ALL_TARGET_MACRO
#define SECONDS_IN_DAY 86400
#else
#define SECONDS_IN_DAY 0
#endif

// 24*60*60*1000 = 86400000
#ifdef TARGET_MAIN_MARCO
const unsigned int MILISECONDS_IN_DAY = 86400000;
#else
const unsigned int MILISECONDS_IN_DAY = 0;
#endif

struct Header {
  void hello(const char*);
};

#endif