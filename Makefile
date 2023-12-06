CC = gcc -std=c++14
CFLAGS = -O0
CXXFLAGS += -I//Users/yangyizhi/googletest/googletest/include/gtest/internal/custom/gtest.h

all : algo test

algo : main.o algo.o
	$(CC) -Wall -g -o $@ $^

test : test.o algo.o
	$(CC) -Wall -g -o $@ $^

%.o : %.c
	$(CC) $(CFLAGS) -c -o $@ $<
	
main.o: algo.h
algo.o: algo.h

test.o: gtest/gtest.h test.cpp
	$(CXX) $(CXXFLAGS) -c -o test.o test.cpp


clean :
	rm -f *.o all

.PHONY: clean
