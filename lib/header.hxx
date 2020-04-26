#ifndef HEADER_H
#define HEADER_H
#include <iostream>

// 24*60*60 = 86400
#define SECONDS_IN_DAY 86400

// 24*60*60*1000 = 86400000
const unsigned int MILISECONDS_IN_DAY = 86400000;

// macro function
#define MAX(a, b) ((a < b) ? (b) : (a))

// general function
short maxShort(short, short);

/**
 * struct Header
 * Learn function
*/ 
struct Header {
  /**
   * struct function
   * hello(const char*);
  */
  void hello(const char*);

  /**
  * struct function
  * maxChar(char, char)
  */
  char maxChar(char, char);
};

#endif