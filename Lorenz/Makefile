CC = clang-7
CC_VERIFICARLO = verificarlo-c
CFLAGS3 = -g -Wall -O0
DOCKER = sudo docker run -v "$(PWD)":/workdir verificarlo/verificarlo

all: lorenz_32 lorenz_64

lorenz_64: lorenz_64.o
	$(DOCKER) $(CC_VERIFICARLO) -o $@ $^
lorenz_32: lorenz_32.o
	$(DOCKER) $(CC_VERIFICARLO) -o $@ $^
	
lorenz_64.o: lorenz_64.c
	$(DOCKER) $(CC_VERIFICARLO) $(CFLAGS3) -c $<
lorenz_32.o: lorenz_32.c
	$(DOCKER) $(CC_VERIFICARLO) $(CFLAGS3) -c $<

clean:
	rm -f lorenz_32.o lorenz_64.o lorenz_32 lorenz_64
.PHONY: clean
