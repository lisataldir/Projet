CC = clang-7
CC_VERIFICARLO = verificarlo-c
CFLAGS3 = -g -Wall -O0
DOCKER = docker run -v "$(PWD)":/workdir verificarlo/verificarlo
LKFLAGS = -lm

all: vec_gen ref_main ur_main ur_err sr_main sr_err stat

vec_gen: vec_gen.o
	$(DOCKER) $(CC) -o $@ $^
vec_gen.o: vec_gen.c
	$(DOCKER) $(CC) $(CFLAGS3) -c $<


ref_main: ref_main.o ref.o
	$(DOCKER) $(CC) -o $@ $^
ref_main.o: ref_main.c algo.h
	$(DOCKER) $(CC) $(CFLAGS3) -c $<
ref.o: ref.c algo.h
	$(DOCKER) $(CC) $(CFLAGS3) -c $<


ur_main: ur_main.o prod.o
	$(DOCKER) $(CC) -o $@ $^
ur_main.o: ur_main.c algo.h
	$(DOCKER) $(CC) $(CFLAGS3) -c $<


sr_main: sr_main.o prod.o
	$(DOCKER) $(CC_VERIFICARLO) -o $@ $^
sr_main.o: sr_main.c algo.h
	$(DOCKER) $(CC_VERIFICARLO) $(CFLAGS3) -c $<


prod.o: prod.c algo.h
	$(DOCKER) $(CC) $(CFLAGS3) -c $<


ur_err: ur_err.o
	$(DOCKER) $(CC) -o $@ $^
ur_err.o: ur_err.c
	$(DOCKER) $(CC) $(CFLAGS3) -c $<


sr_err: sr_err.o
	$(DOCKER) $(CC) -o $@ $^
sr_err.o: sr_err.c
	$(DOCKER) $(CC) $(CFLAGS3) -c $<


stat: stat.o
	$(DOCKER) $(CC) -o $@ $^ $(LKFLAGS)
stat.o: stat.c
	$(DOCKER) $(CC) $(CFLAGS3) -c $<


clean:
	rm -Rf *.o vec_gen ref_main sr_main ur_main ur_err sr_err stat

.PHONY: clean
