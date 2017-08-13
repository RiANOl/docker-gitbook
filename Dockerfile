FROM node:6-alpine

ARG VERSION=3.2.3

LABEL maintainer="Rianol Jou <rianol.jou@gmail.com>" \
      version=$VERSION

RUN npm install -g gitbook-cli &&\
    gitbook fetch ${VERSION} &&\
    npm cache clear &&\
    rm -rf /tmp/*

ENV BOOKDIR /gitbook

VOLUME $BOOKDIR

EXPOSE 4000

WORKDIR $BOOKDIR

ENTRYPOINT ["/usr/local/bin/gitbook"]
