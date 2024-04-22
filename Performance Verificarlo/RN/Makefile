CC = gcc
CFLAGS3 = -g -Wall -O0

all: main

main: main.o algo.o
	$(CC) -o $@ $^

main.o: main.c algo.h
	$(CC) -c $<
algo.o: algo.c algo.h
	$(CC) $(CFLAGS3) -c $<


clean:
	rm -f *.o main

.PHONY: clean
