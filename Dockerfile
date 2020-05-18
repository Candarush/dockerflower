FROM gcc:latest
COPY . /usr/src/cppapp
WORKDIR /usr/src/cppapp
RUN apt-get update
RUN apt-get install libev4
RUN apt-get install libuv1
RUN apt-get install libwebsockets8
RUN apt-get install libwrap0
RUN apt-get install mosquitto
RUN make
CMD ["./exec"]