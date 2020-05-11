#
include(./hunter/HunterGate.cmake)
option(HUNTER_ENABLED "Enable Hunter package manager support" ON)
HunterGate(
    URL "https://github.com/cpp-pm/hunter/archive/v0.23.253.tar.gz"
    SHA1 "88ea6d37c897a81a080eb9ae0f69d7807bbb3c73"
)
#