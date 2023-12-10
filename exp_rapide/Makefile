CC = gcc
CFLAGS3 = -g -Wall -O3 

prog: main.o exp_rapide.o
	$(CC) $(CFLAGS3) -o prog main.o exp_rapide.o

main.o: main.c exp_rapide.h
	$(CC) $(CFLAGS3) -c -o $@ $<

exp_rapide.o: exp_rapide.c exp_rapide.h
	$(CC) $(CFLAGS3) -c -o $@ $<

clean:
	rm -f *.o prog

.PHONY: clean