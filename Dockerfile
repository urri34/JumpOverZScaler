FROM ghcr.io/linuxserver/baseimage-kasmvnc:alpine320
RUN apk add --no-cache firefox
RUN mkdir -p /config/Downloads
RUN chown -R abc /config
RUN chmod -R 777 /config
COPY /root /
