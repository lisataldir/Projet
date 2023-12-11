CC = gcc
CFLAGS3 = -g -Wall -O3 

rapid_error: main.o exp_rapide.o
	$(CC) $(CFLAGS3) -o rapid_error main.o exp_rapide.o

main.o: main.c exp_rapide.h
	$(CC) $(CFLAGS3) -c -o $@ $<

exp_rapide.o: exp_rapide.c exp_rapide.h
	$(CC) $(CFLAGS3) -c -o $@ $<

clean:
	rm -f *.o rapid_error

.PHONY: clean