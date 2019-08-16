FROM alpine:3.6
MAINTAINER <csr.ysr1@gmail.com>
WORKDIR /usr/ramana/
RUN apk add --update bash
RUN apk add --update nodejs nodejs-npm
RUN npm install -g http-server
ADD . /usr/ramana/
CMD ["http-server","-s"]
