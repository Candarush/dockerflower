# Компилятор
CC=gcc

# Стандарт
STD=c++11

.PHONY: all

all: exec clean

exec: MosqMQTTWrapper.o main.o 
	$(CC) main.o -o exec -lmosquitto -lmosquittopp
main.o: main.cpp
	$(CC) -std=$(STD) -c main.cpp
MosqMQTTWrapper.o: MosqMQTTWrapper.hpp
	$(CC) -std=$(STD) -c MosqMQTTWrapper.cpp -o mosqmqttwrapper.o
clean:
	rm -rf *.o
