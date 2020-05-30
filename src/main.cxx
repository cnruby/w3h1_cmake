//
#include <libintl.h>
#include <locale.h>

#include <config.hxx>
#include <iostream>
#include <cstring>
#include "compiler.hxx"


int main(int, char**) {
  std::cout << "Project ID:\t\t" << PROJECT_NAME << std::endl;
  std::cout << "Project Code:\t\t" << PROJECT_DESCRIPTION << std::endl;

  char* word = new char[30];
  setlocale(LC_ALL, "");
  bindtextdomain(TOOL, SYSTEM_LOCALE_DIR);
  textdomain(TOOL);

  int ret = getWord(word, sizeof(word));
  if(ret != 0)
    return EXIT_FAILURE;

  std::cout << "English:\t\t"
            << word << std::endl;
  std::cout << "Translate " << LANG << ":\t" << gettext(word) << std::endl;

  return EXIT_SUCCESS;
}
//