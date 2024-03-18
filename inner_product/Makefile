CC = verificarlo-c
CFLAGS3 = -g -Wall -O0
DOCKER = docker run -v "$(PWD)":/workdir verificarlo/verificarlo

all: vec_gen SR UR ref UR_err SR_err stat

stat: stat.o
	$(DOCKER) verificarlo-c -o $@ $^

ref: ref.o	
	$(DOCKER) $(CC) -o $@ $^

UR_err: UR_err.o
	$(DOCKER) $(CC) -o $@ $^

SR_err: SR_err.o
	$(DOCKER) $(CC) -o $@ $^

vec_gen: vec_gen.o
	$(DOCKER) $(CC) -o $@ $^
	
UR: UR_main.o
	$(DOCKER) $(CC) -o $@ $^

SR: SR_main.o
	$(DOCKER) $(CC) -o $@ $^

stat.o: stat.c
	$(DOCKER) $(CC) $(CFLAGS3) -c $<

UR_err.o: ur_err.c
	$(DOCKER) $(CC) $(CFLAGS3) -c $<

SR_err.o: sr_err.c
	$(DOCKER) $(CC) $(CFLAGS3) -c $<

UR_main.o: ur_main.c algo.h
	$(DOCKER) $(CC) $(CFLAGS3) -c $<

SR_main.o: sr_main.c algo.h
	$(DOCKER) $(CC) $(CFLAGS3) -c $<

ref.o: ref_main.c algo.h
	$(DOCKER) $(CC) $(CFLAGS3) -c $<

vec_gen.o: vec_gen.c
	$(DOCKER) $(CC) $(CFLAGS3) -c $<


clean:
	rm -f *.o

.PHONY: clean
