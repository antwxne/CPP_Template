set(TESTS_NAME unit_tests)
set(TESTS_SRC
        Tests/basic_assertions.cpp
        Tests/basic_parameterized.cpp
        )

set(CMAKE_CXX_FLAGS ${CMAKE_CXX_FLAGS} --coverage)
add_executable(${TESTS_NAME} ${TESTS_SRC} ${SRC})

target_link_libraries(${TESTS_NAME} criterion)
