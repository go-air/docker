FROM golang:1.16-alpine

RUN apk update
RUN apk add git
RUN apk add postfix
RUN apk add vim

WORKDIR /air.codes/tools

RUN go get github.com/go-air/gini/...
RUN go get github.com/go-air/reach/...
RUN go get github.com/go-air/pal/...


CMD [ "pal", "-h" ]
