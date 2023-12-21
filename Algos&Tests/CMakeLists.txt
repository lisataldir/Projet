cmake_minimum_required(VERSION 3.10)

# set the project name
project(projet)

# enable modern C++
set(CMAKE_CXX_STANDARD 17)

# add the executable
add_executable(algo main.cpp)
add_executable(algo_test test.cpp)

#flags
set(CMAKE_CXX_FLAGS "-fvisibility=hidden")

# add the library
add_subdirectory(algo_lib)

#mylib sould include path to .h
target_include_directories(al PUBLIC algo_lib)

#prog depends on mylib
target_link_libraries (algo al)
target_link_libraries (algo_test GTest::GTest GTest::Main al)


#ctest from cmake
enable_testing()
find_package(GTest REQUIRED)

#Gtest : 
gtest_discover_tests(algo_test)
