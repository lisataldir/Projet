if(EXISTS "/Users/zhaoyutainazir/Projet/build/algo_test[1]_tests.cmake")
  include("/Users/zhaoyutainazir/Projet/build/algo_test[1]_tests.cmake")
else()
  add_test(algo_test_NOT_BUILT algo_test_NOT_BUILT)
endif()
