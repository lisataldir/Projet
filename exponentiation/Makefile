CC = clang-7
CFLAGS3 = -g -Wall -O1
DOCKER = sudo docker run -v "$(PWD)":/workdir verificarlo/verificarlo

main: main.o algo.o reference.o
	$(DOCKER) verificarlo-c -o $@ $^

main.o: main.c algo.h
	$(DOCKER) $(CC) $(CFLAGS3) -c $<
reference.o: reference.c algo.h
	$(DOCKER) $(CC) $(CFLAGS3) -c $<

algo.o: algo.c algo.h
	$(DOCKER) verificarlo-c -g -Wall -O1 -c -o $@ $<

clean:
	rm -rf main main.o algo.o reference.o

.PHONY: clean