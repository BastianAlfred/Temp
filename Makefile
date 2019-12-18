# Specifie Compiler
CC = gcc

# Set Compiler Settings
CCFLAGS = -std=c99 -g

# Set Linker Settings
LDFLAGS = -lm

# Set Object file
OBJ = src/main.o

# Clean target
.PHONY: clean

# Link object files to target "prog"
prog: $(OBJ)
	$(CC) $(CCFLAGS) -o run  $(OBJ) $(LDFLAGS)

# Compile source file into object file
main.o: src/main.c
	$(CC) $(CCFLAGS) -c src/main.c

# Clean target
clean:
	rm -f ./src/*.o
	rm -f run
