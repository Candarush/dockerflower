FROM gcc:latest

# Копирование директории
COPY . /usr/src/cppapp
WORKDIR /usr/src/cppapp

# Библиотеки для москита
RUN apt-get update
RUN apt-get install libev4
RUN apt-get install libuv1
RUN apt-get install libwebsockets8
RUN apt-get install libwrap0

# Москит
RUN apt-get install mosquitto

# Сборка
RUN make

#Запуск
CMD ["./exec"]