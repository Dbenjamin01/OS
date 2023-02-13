CXX=g++
CC=gcc
CFLAGS=-I.
DEPS =
OBJ = 
LIBS = 

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

all: test_1 test_2 test_3 test_4 test_5 main
	
test_1: test1.c
	$(CC) -o $@ $^ $(CFLAGS) $(LIBS)

test_2: test2.c
	$(CC) -o $@ $^ $(CFLAGS) $(LIBS)
	
test_3: test3.c
	$(CC) -o $@ $^ $(CFLAGS) $(LIBS)
	
test_4: test4.c
	$(CC) -o $@ $^ $(CFLAGS) $(LIBS)
	
test_5: test5.c
	$(CC) -o $@ $^ $(CFLAGS) $(LIBS)
	
main: main.cpp
	$(CXX) -o $@ $^ $(CFLAGS) $(LIBS)
