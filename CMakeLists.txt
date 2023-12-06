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

#指定要访问的子目录
add_subdirectory(algo_lib)

#mylib要包含的库.h路径
target_include_directories(al PUBLIC algo_lib)

#prog依赖mylib
target_link_libraries (algo al)
target_link_libraries (algo_test GTest::GTest GTest::Main al)


#ctest : cmake 自带的test
enable_testing()
find_package(GTest REQUIRED)

#Gtest : 
gtest_discover_tests(algo_test)
