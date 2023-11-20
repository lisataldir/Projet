CC = clang
CFLAGS = -O0

all:algo

algo : main.o algo.o
	$(CC) -Wall -g -o $@ $^

%.o : %.c
	$(CC) $(CFLAGS) -c -o $@ $<
	
main.o: algo.h
algo.o: algo.h

clean :
	rm -f *.o
.PHONY: clean
