

#define MAINPREFIX z
#define PREFIX agd

#define AUTHOR QUOTE(Hell's Kitchen Incorporated)
#define MOD_NAME_BEAUTIFIED QUOTE(A Galaxy Divided 2)

#include "script_version.hpp"

#define VERSION     MAJOR.MINOR
#define VERSION_STR MAJOR.MINOR.PATCHLVL.BUILD
#define VERSION_AR  MAJOR,MINOR,PATCHLVL,BUILD

#define REQUIRED_VERSION 2.06
#define REQUIRED_CBA_VERSION {3,15,6}
#define REQUIRED_ACE_VERSION {3,14,0,63}

#include "script_debug.hpp"

#ifndef RELEASE_BUILD
    #define DEBUG_ENABLED_MAIN
#endif

#ifdef SUBCOMPONENT
    #ifdef SUBCOMPONENT_BEAUTIFIED
        #define COMPONENT_NAME QUOTE(A Galaxy Divided 2 - SUBCOMPONENT_BEAUTIFIED)
    #else
        #define COMPONENT_NAME QUOTE(A Galaxy Divided 2 - SUBCOMPONENT)
    #endif
#else
    #ifdef COMPONENT_BEAUTIFIED
        #define COMPONENT_NAME QUOTE(A Galaxy Divided 2 - COMPONENT_BEAUTIFIED)
    #else
        #define COMPONENT_NAME QUOTE(A Galaxy Divided 2 - COMPONENT)
    #endif
#endif
