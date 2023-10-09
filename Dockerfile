FROM alpine:latest
#MAINTAINER maochengfei@transsion.com

COPY bin/helloworld /

EXPOSE 9090

ENTRYPOINT ["/helloworld"]