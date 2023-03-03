FROM alpine:3.10.3

LABEL maintainer="gymbombom@kakao.com"
LABEL version="1.0.0" 
LABEL description="docker transmission"

RUN apk update
RUN apk upgrade
RUN apk add transmission-daemon
RUN apk add transmission-cli
RUN apk add vim

RUN mkdir -p /root/transmission/share

RUN chmod 777 /root/transmission
RUN chmod 777 /root/transmission/share

VOLUME ["/root/transmission/share"]

EXPOSE 9091
