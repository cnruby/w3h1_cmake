#ifndef HEADER_H
#define HEADER_H
#include <iostream>

// 24*60*60 = 86400
#define SECONDS_IN_DAY 86400

// 24*60*60*1000 = 86400000
const unsigned int MILISECONDS_IN_DAY = 86400000;

namespace Header {
 void hello();
}  // namespace Header

void Header::hello() { std::cout << "Hello, Header!" << std::endl; }

// namespace Header {
// void hello() { std::cout << "Hello, Header!" << std::endl; }
// }  // namespace Header

#endif