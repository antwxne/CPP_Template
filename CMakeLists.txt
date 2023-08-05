#Cmake version
cmake_minimum_required(VERSION 3.20)

#Project name
project(Template)

#Bin name
set(NAME a.out)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_VERBOSE_MAKEFILE ON)

if(UNIX)
set(CMAKE_CXX_FLAGS "-Wall -Wextra")
endif()


#includes
include_directories(Sources)

# Server Sources
include(Sources/Sources.cmake)
set(MAIN
        Sources/Main.cpp)
set(SRC ${SRC} )

# Build
add_executable(${NAME} ${MAIN} ${SRC})

# Unit tests
include(Tests/Tests.cmake)
