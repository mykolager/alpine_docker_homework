FROM alpine

RUN apk update \
	apk install netcat

EXPOSE 8087