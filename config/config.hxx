//
#ifndef CONFIG_FROM_CMAKE_HXX
#define CONFIG_FROM_CMAKE_HXX

#define PROJECT_NAME "basic_134"
#define PROJECT_DESCRIPTION "Hello, COMPILE_DEFINITIONS!"

#ifdef ALL_TARGET_MACRO
const bool ALL_MACRO = true;
#else
const bool ALL_MACRO = false;
#endif //ALL_TARGET_MACRO

#ifdef TARGET_MAIN_MARCO
const bool MAIN_MARCO = true;
#else
const bool MAIN_MARCO = false;
#endif //TARGET_MAIN_MARCO

#ifdef STATIC_LIB
const bool STATIC_LIBRARY = true;
#else
const bool STATIC_LIBRARY = false;
#endif //STATIC_LIB

#ifdef SHARED_LIB
const bool SHARED_LIBRARY = true;
#else
const bool SHARED_LIBRARY = false;
#endif //SHARED_LIB

#endif
//
