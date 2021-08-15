FROM aircodes/tools:latest

RUN apk update
RUN apk add git
RUN apk add postfix
RUN apk add vim

#
# mail config
#
RUN postconf -e mydestination=air.codes,localhost
RUN postconf -e myhostname=air.codes
RUN echo "air.codes anything" >> /etc/postfix/virtual
RUN echo "scott@air.codes scott@mindowl.com" >> /etc/postfix/virtual
RUN postmap /etc/postfix/virtual


WORKDIR /air.codes

#
# web services
#
RUN mkdir w
RUN mkdir palapi

EXPOSE 80
EXPOSE 443
EXPOSE 25
EXPOSE 587

RUN go get golang.org/x/tools/...

COPY srv.sh /

WORKDIR /dev

# ouch
RUN apk add libcap && setcap 'cap_net_bind_service=+ep' /go/bin/godoc

CMD [ "/bin/sh", "/srv.sh"]
