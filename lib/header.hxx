#ifndef HEADER_H
#define HEADER_H
#include <iostream>

/*! 24*60*60 = 86400 */
#define SECONDS_IN_DAY 86400

/*! 24*60*60*1000 = 86400000 */
const unsigned int MILISECONDS_IN_DAY = 86400000;

// macro function
#define MAX(a, b) ((a < b) ? (b) : (a))

// general function
short maxShort(short, short);

/*!
   Learn functions within 'struct'
*/
struct Header {
  //! struct 'Header's constructor
  Header();

  /*! Greet Hello

    \param name greet name
  */
  void hello(const char* name);

  /*! Find Largest of Two Numbers

    \param s the first char
    \param t the second char
    \return the maximal between 's' and 't'
  */
  char maxChar(char s, char t);
};

#endif