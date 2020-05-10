FROM alpine:3.11.3

LABEL maintainer "genzouw <genzouw@gmail.com>"

RUN apk add --no-cache \
  exiftool \
  python3 \
  python3-dev \
  jq \
  ;

RUN pip3 install \
  --upgrade pip \
  && pip3 install https://github.com/hay/xml2json/zipball/master

COPY ./docker-entrypoint.sh /

ENTRYPOINT ["/docker-entrypoint.sh"]
