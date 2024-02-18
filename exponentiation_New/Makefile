CC = verificarlo-c
CFLAGS3 = -g -Wall -O0
DOCKER = docker run -v "$(PWD)":/workdir verificarlo/verificarlo

all: SR_main UR_main ref_main erreur

erreur: erreur.o
	$(DOCKER) verificarlo-c -o $@ $^
	
ref_main: ref_main.o algo.o reference.o
	$(DOCKER) verificarlo-c -o $@ $^
	
UR_main: UR_main.o algo.o
	$(DOCKER) verificarlo-c -o $@ $^

SR_main: SR_main.o algo.o
	$(DOCKER) verificarlo-c -o $@ $^

erreur.o: erreur.c
	$(DOCKER) $(CC) $(CFLAGS3) -c $<
	
UR_main.o: UR_main.c algo.h
	$(DOCKER) $(CC) $(CFLAGS3) -c $<
SR_main.o: SR_main.c algo.h
	$(DOCKER) $(CC) $(CFLAGS3) -c $<
ref_main.o: ref_main.c algo.h
	$(DOCKER) $(CC) $(CFLAGS3) -c $<
reference.o: reference.c algo.h
	$(DOCKER) $(CC) $(CFLAGS3) -c $<

algo.o: algo.c algo.h
	$(DOCKER) verificarlo-c -g -Wall -O1 -c -o $@ $<

clean:
	rm -f *.o

.PHONY: clean
