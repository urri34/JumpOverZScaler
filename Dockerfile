FROM ghcr.io/linuxserver/baseimage-kasmvnc:alpine320
RUN groupmod -g 995 abc
RUN apk add --no-cache firefox
#RUN mkdir -p /config/Downloads && chown abc /config && chmod 777 /config && chown abc /config/Downloads && chmod 777 /config/Downloads
COPY /root /
