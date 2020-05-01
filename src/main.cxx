//
#include <iostream>
#include <boost/filesystem.hpp>

#include "config.hxx"

int main(int, char**) {
  std::cout << PROJECT_DESCRIPTION << std::endl;

  // use of boost filesystem
  boost::filesystem::path path = Boost_INCLUDE_DIRS;
  std::cout << "boost include path = " << path << std::endl;
  std::cout << "boost include parent path = " << path.parent_path() << std::endl;

  return 0;
}
//#include <boost/filesystem/path.hpp>
//