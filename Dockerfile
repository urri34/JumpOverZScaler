FROM ghcr.io/linuxserver/baseimage-kasmvnc:alpine320
RUN apk add --no-cache firefox
COPY /root /
