//
#include <iostream>
#include "config.hxx"

int main(int, char **)
{
    std::cout << "Hello, C++ Package!" << std::endl;

    std::cout << "git version:\t\t" << GIT_VERSION << std::endl;
    std::cout << "git revision hash:\t" << GIT_REVISION << std::endl;
}
//