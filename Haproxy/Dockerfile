# Dockerfile for HAPROXY
FROM haproxytech/haproxy-alpine:latest

RUN mkdir -p /usr/local/etc/haproxy/ssl/

WORKDIR /usr/local/etc/haproxy
COPY cert.sh /usr/local/etc/haproxy/ssl/cert.sh
RUN chmod +x ./ssl/cert.sh && \
    ./ssl/cert.sh
COPY haproxy.cfg /usr/local/etc/haproxy/