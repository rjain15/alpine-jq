FROM alpine:edge
MAINTAINER Rajesh Jain <rjain15@gmail.com>
RUN apk update
RUN apk upgrade

RUN apk --no-cache add jq bash

RUN mkdir -p /opt
WORKDIR /app
CMD /bin/bash
