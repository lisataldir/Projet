CC = verificarlo-c
CFLAGS3 = -g -Wall -O0
DOCKER = docker run -v "$(PWD)":/workdir verificarlo/verificarlo

all: SR_main UR_main ref_main erreur stat stat_sign_bit

stat_sign_bit: stat_sign_bit.o
	$(DOCKER) verificarlo-c -o $@ $^ -lm

stat: stat.o
	$(DOCKER) verificarlo-c -o $@ $^
	
erreur: erreur.o
	$(DOCKER) $(CC) -o $@ $^
	
ref_main: ref_main.o reference.o
	$(DOCKER) $(CC) -o $@ $^
	
UR_main: UR_main.o experience.o
	$(DOCKER) $(CC) -o $@ $^

SR_main: SR_main.o experience.o
	$(DOCKER) $(CC) -o $@ $^

stat_sign_bit.o: stat_sign_bit.c
	$(DOCKER) $(CC) $(CFLAGS3) -c $< -lm
stat.o: stat.c
	$(DOCKER) $(CC) $(CFLAGS3) -c $<
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
experience.o: experience.c algo.h
	$(DOCKER) $(CC) $(CFLAGS3) -c $<

clean:
	rm -f *.o

.PHONY: clean
