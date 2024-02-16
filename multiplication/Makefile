CC = gcc
CFLAGS3 = -g -Wall -O1
#DOCKER = docker run -v /Users/yangyizhi/Documents/M1\ CHPS/105\ PPN/Projet:/workdir -it 4106c18170be4c6eb5c30b497344be0e0bf9fedfb69856793402b837ea8db154
DOCKER = sudo docker run -v "$(PWD)":/workdir verificarlo/verificarlo bash
 
main: main.o algo.o ref.o
	$(DOCKER) verificarlo-c -o $@ $^

main.o: main.c algo.h
	$(DOCKER) $(CC) $(CFLAGS3) -c $<
ref.o: ref.c algo.h
	$(DOCKER) $(CC) $(CFLAGS3) -c $<

algo.o: algo.c algo.h
	$(DOCKER) verificarlo-c -g -Wall -O1 -c -o $@ $<

clean:
	rm -rf main main.o algo.o ref.o

.PHONY: clean