FROM alpine:latest

MAINTAINER renoretriever <renoretriever@gmail.com>

RUN set -x && \
    apk update && \
    apk --update add \
        nodejs \
        yarn && \
    yarn global add docusaurus-init && \ 
    rm -rf /var/cache/apk/*

EXPOSE 3000
WORKDIR /root/

