FROM alpine:edge
MAINTAINER Rajesh Jain <rjain15@gmail.com>
RUN apk --no-cache add jq
RUN mkdir -p /opt
WORKDIR /app
CMD /bin/sh
