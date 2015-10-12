CC = g++
CFLAGS=-Wall -ggdb -g3 
LDFLAGS= -lcurl

OBJECTS=mchain.o
SOURCE=mchain.cpp

all:  mchain

mchain: $(OBJECTS)
	$(CC) $(CFLAGS) $(OBJECTS) -o mchain $(LDFLAGS)

clean:
	rm -rf *.o mchain
#	find /tmp/* -maxdepth 0 -name 'led*' -exec rm '{}' ';'
