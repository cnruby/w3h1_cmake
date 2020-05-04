//
#include <libintl.h>
#include <locale.h>

#include <config.hxx>
#include <iostream>

int main(int, char**) {
  std::cout << PROJECT_DESCRIPTION << std::endl;

  setlocale(LC_ALL, "");
  bindtextdomain("apt", SYSTEM_LOCALE_DIR);
  textdomain("apt");
  std::cout << "English:\t\t"
            << "Query" << std::endl;
  std::cout << "Translate " << LANG << ":\t" << gettext("Query") << std::endl;

  return 0;
}
//