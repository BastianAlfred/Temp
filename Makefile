# Compiler
CC = gcc
CCFLAGS = -std=c99
OBJ = main.o

.PHONY: clean

run: $(OBJ)
	$(CC) $(CCFLAGS) -o run $(OBJ)

main.o: main.c
	$(CC) $(CCFLAGS) -c main.c

clean:
	rm -f *.o
	rm -f run
