//
#ifndef MACRO_FROM_CMAKE_HXX_
#define MACRO_FROM_CMAKE_HXX_

#include<iostream>
using namespace std;

#if MACRO_OS == 100
const string OS = "LINUX";
#else
const string OS = "";
#endif

#if MACRO_TOOL == 1
const char* TOOL = (char*)"apt";
#elif MACRO_TOOL == 2
const char* TOOL = (char*)"debconf";
#elif MACRO_TOOL == 3
const char* TOOL = (char*)"git";
#else
const char* TOOL = (char*)"";
#endif

#endif
//
