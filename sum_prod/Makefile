CC = clang-7
CC_VERIFICARLO = verificarlo-c
CFLAGS3 = -g -Wall -O0
CFLAGS2 = -g -Wall -O2
DOCKER = docker run -v "$(PWD)":/workdir verificarlo/verificarlo
LKFLAGS = -lm

all: vec_gen main stat

vec_gen: vec_gen.o
	$(DOCKER) $(CC) -o $@ $^
vec_gen.o: vec_gen.c
	$(DOCKER) $(CC) $(CFLAGS3) -c $<


main: main.o calcul.o ref.o
	$(DOCKER) $(CC_VERIFICARLO) -o $@ $^
main.o: main.c algo.h
	$(DOCKER) $(CC) -c $<
calcul.o: calcul.c algo.h
	$(DOCKER) $(CC_VERIFICARLO) $(CFLAGS2) -c $<
ref.o: ref.c algo.h
	$(DOCKER) $(CC) $(CFLAGS3) -c $<

stat: stat.o
	$(DOCKER) $(CC) -o $@ $^ $(LKFLAGS)
stat.o: stat.c
	$(DOCKER) $(CC) $(CFLAGS3) -c $<


clean:
	rm -Rf *.o vec_gen main stat

.PHONY: clean
