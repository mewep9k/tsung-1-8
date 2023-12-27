FROM erlang:24-alpine

WORKDIR /root

RUN apk update && apk add wget make bash
RUN wget http://tsung.erlang-projects.org/dist/tsung-1.8.0.tar.gz
RUN tar -xzf tsung-1.8.0.tar.gz && rm -f tsung-1.8.0.tar.gz

WORKDIR /root/tsung-1.8.0

RUN ./configure
RUN make
RUN make install

ENTRYPOINT ["/usr/local/bin/tsung"]