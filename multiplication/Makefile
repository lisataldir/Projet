CC = verificarlo-c
CFLAGS3 = -g -Wall -O0
DOCKER = sudo docker run -v "$(PWD)":/workdir verificarlo/verificarlo

all: main performance

main: main.o reference.o algo.o
	$(DOCKER) $(CC) -o $@ $^
performance: performance.o reference.o algo.o
	$(DOCKER) $(CC) -o $@ $^	

performance.o: performance.c algo.h
	$(DOCKER) $(CC) $(CFLAGS3) -c $<
main.o: main.c algo.h
	$(DOCKER) $(CC) $(CFLAGS3) -c $<
algo.o: algo.c algo.h
	$(DOCKER) $(CC) $(CFLAGS3) -c $<
reference.o: reference.c algo.h
	$(DOCKER) $(CC) $(CFLAGS3) -c $<


clean:
	rm -f *.o main performance

.PHONY: clean