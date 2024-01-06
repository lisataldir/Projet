CC = gcc
CFLAGS3 = -g -Wall -O3 

rapid: main.o exp_rapide.o
	$(CC) $(CFLAGS3) -o rapid main.o exp_rapide.o

main.o: main.c exp_rapide.h
	$(CC) $(CFLAGS3) -c -o $@ $<

exp_rapide.o: exp_rapide.c exp_rapide.h
	$(CC) $(CFLAGS3) -c -o $@ $<

error: error.o
	$(CC) $(CFLAGS3) -o error error.o

error.o: error.c
	$(CC) $(CFLAGS3) -c -o $@ $<

err_py: err_py.o
	$(CC) $(CFLAGS3) -o err_py err_py.o

err_py.o: err_py.c
	$(CC) $(CFLAGS3) -c -o $@ $<
clean:
	rm -f *.o rapid error err_py

.PHONY: clean