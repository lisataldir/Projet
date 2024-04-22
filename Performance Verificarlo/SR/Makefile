CC = clang-7
CC_VERIFICARLO = verificarlo-c
CFLAGS3 = -g -Wall -O0
DOCKER = sudo docker run -v "$(PWD)":/workdir verificarlo/verificarlo

all: main

main: main.o algo.o
	$(DOCKER) $(CC_VERIFICARLO) -o $@ $^

main.o: main.c algo.h
	$(DOCKER) $(CC) -c $<
algo.o: algo.c algo.h
	$(DOCKER) $(CC_VERIFICARLO) $(CFLAGS3) -c $<


clean:
	rm -f *.o main

.PHONY: clean
