CC = g++
CFLAGS = -O0

all:algo test

algo : main.o algo.o
	$(CC) -Wall -g -o $@ $^

test : test.o algo.o
	$(CC) -Wall -g -o $@ $^

%.o : %.c
	$(CC) $(CFLAGS) -c -o $@ $<
	
main.o: algo.h
algo.o: algo.h
test.o: algo.h

clean :
	rm -f *.o algo 

.PHONY: clean
