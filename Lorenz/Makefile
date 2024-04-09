CC = clang-7
CC_VERIFICARLO = verificarlo-c
CFLAGS3 = -g -Wall -O0
DOCKER = sudo docker run -v "$(PWD)":/workdir verificarlo/verificarlo

all: lorenz

lorenz: lorenz.o
	$(DOCKER) $(CC_VERIFICARLO) -o $@ $^
	
lorenz.o: lorenz.c
	$(DOCKER) $(CC_VERIFICARLO) $(CFLAGS3) -c $<

clean:
	rm -f lorenz.o lorenz
.PHONY: clean
