//
#include <libintl.h>
#include <locale.h>

#include <config.hxx>
#include <iostream>

int main(int, char**) {
  std::cout << PROJECT_DESCRIPTION << std::endl;

  setlocale(LC_ALL, "");
  bindtextdomain("debconf", SYSTEM_LOCALE_DIR);
  textdomain("debconf");
  std::cout << "English:\t\t"
            << "Choices" << std::endl;
  std::cout << "Translate " << LANG << ":\t" << gettext("Choices") << std::endl;

  return 0;
}
//