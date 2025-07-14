FROM ghcr.io/linuxserver/baseimage-kasmvnc:alpine320
RUN sed -E 's/^(abc:x:911:)911/\1995/' /etc/passwd -i
RUN apk add --no-cache firefox
COPY /root /
