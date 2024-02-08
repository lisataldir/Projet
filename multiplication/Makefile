CC = gcc
CFLAGS3 = -g -Wall -O3 

main: main.o algo.o
	$(CC) $(CFLAGS3) -o main main.o algo.o

main.o: main.c algo.h
	$(CC) $(CFLAGS3) -c -o $@ $<

algo.o: algo.c algo.h
	$(CC) $(CFLAGS3) -c -o $@ $<

clean:
	rm -rf main main.o algo.o

.PHONY: clean