FROM golang:alpine
MAINTAINER Rajesh Jain <rjain15@gmail.com>
RUN apk update
RUN apk upgrade

RUN apk --no-cache --virtual add jq bash git

ADD https://cli.run.pivotal.io/stable?release=linux64-binary /tmp/cf-cli.tgz
RUN mkdir -p /usr/local/bin && \
  tar -xzf /tmp/cf-cli.tgz -C /usr/local/bin && \
  cf --version && \
  rm -f /tmp/cf-cli.tgz

# Install cf cli Autopilot plugin

# RUN apk add ca-certificates && update-ca-certificates && apt-get add openssl
# RUN apk install ca-certificates && update-ca-certificates && apt-get install openssl
# ADD https://github.com/contraband/autopilot/releases/download/0.0.4/autopilot-linux /tmp/autopilot-linux

# RUN chmod +x /tmp/autopilot-linux && \
# cf install-plugin /tmp/autopilot-linux -f && \
# rm -f /tmp/autopilot-linux

# Install yaml cli
RUN go get gopkg.in/yaml.v2

RUN mkdir -p /opt
WORKDIR /app
CMD /bin/bash
