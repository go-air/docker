FROM aircodes/tools:v0.1.0

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



#RUN go get github.com/go-air/air-codes

CMD [ "pal", "-h" ]
