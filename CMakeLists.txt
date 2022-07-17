#Cmake version
cmake_minimum_required(VERSION 3.20)

#Project name
project(Template)

#Bin name
set(NAME a.out)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

#Flags
set(CMAKE_CXX_FLAGS_RELEASE "-Wall -Wextra")
set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_RELEASE} -ggdb -g3 -DDEBUG")

#includes
include_directories(Sources)

# Server Sources
include(Sources/Sources.cmake)
set(MAIN
        Sources/Main.cpp)
set(SRC ${SRC} )

# Build
add_executable(${NAME} ${MAIN} ${SRC})

# Use external repository
#include(ExternalProject)
#
#ExternalProject_Add(
#        external
#        GIT_REPOSITORY https://github.com/
#        GIT_TAG ""
#        INSTALL_COMMAND ""
#        TEST_COMMAND ""
#)
#
#add_dependencies(${NAME} external)
#ExternalProject_Get_Property(repo external)
#include_directories(${SOURCE_DIR}/include)

# Unit tests
include(Tests/Tests.cmake)