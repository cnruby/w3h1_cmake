#include <iostream>
#include <cstring>
#include <macro.hxx>

int getWord(char*, int);

int getWord(char* buffer, int sz) {
  char word[sz];
  if (OS == "LINUX") {
    if(strcmp(TOOL, (char*)"apt") == 0) {
      strcpy(word, (char*)"Query");
    } else if(strcmp(TOOL, (char*)"debconf") == 0) {
      strcpy(word, (char*)"Choices");
    } else {
      return EXIT_FAILURE;
    }
  } else {
    if(strcmp(TOOL, "git") == 0) {
      strcpy(word, (char*)"binary");
    } else {
      return EXIT_FAILURE;
    }
  }
  for (int n=0;n<sizeof(word);n++) {
    buffer[n] = word[n];
  }
  return EXIT_SUCCESS;
}