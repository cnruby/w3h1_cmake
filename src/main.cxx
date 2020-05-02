//
#include <libintl.h>
#include <locale.h>
#include <iostream>
#include <config.hxx>

int main(int, char**) {
  std::cout << PROJECT_DESCRIPTION << std::endl;

  setlocale(LC_ALL, "");
  bindtextdomain("git", SYSTEM_LOCALE_DIR);
  textdomain( "git");
  std::cout << "English:\t\t" << "binary" << std::endl;
  std::cout << "Translate " << LANG << ":\t" << gettext("binary") << std::endl;
  
  return 0;
}
//