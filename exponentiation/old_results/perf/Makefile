CC = gcc
CFLAGS3 = -g -Wall -O0

all: performance

performance: performance.o reference.o algo.o
	$(CC) -o $@ $^

algo.o: ../algo.c ../algo.h
	$(CC) $(CFLAGS3) -c $<
reference.o: ../reference.c ../algo.h
	$(CC) $(CFLAGS3) -c $<
performance.o: ../performance.c ../algo.h
	$(CC) $(CFLAGS3) -c $<


clean:
	rm -f *.o main performance

.PHONY: clean