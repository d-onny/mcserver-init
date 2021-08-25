FROM openjdk:8-slim-buster

RUN apt-get update && apt-get install -y python3 \
    wget \
    unzip

RUN mkdir /server

WORKDIR /server

COPY python python

COPY entrypoint.sh .
RUN chmod +x entrypoint.sh

ENTRYPOINT [ "./entrypoint.sh" ]
