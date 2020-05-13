#ifndef LIB_HELLO_HXX
#define LIB_HELLO_HXX

#include <iostream>

namespace airspace {

class Hello {
 public:
  static void greet() {
    std::cout << "hello.hxx" << std::endl;
    cxx_greet();
  }

 private:
   static void cxx_greet();
};

}

#endif // LIB_HELLO_HXX
