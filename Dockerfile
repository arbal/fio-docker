FROM alpine

RUN apk add --no-cache fio bash util-linux

# CMD ln -s /usr/bin/fio /usr/local/bin/fio

COPY jobs /jobs
VOLUME /data
WORKDIR /data

ENTRYPOINT [ "fio" ]
