FROM golang

RUN go get github.com/antonholmquist/jason

RUN go get golang.org/x/oauth2/google

RUN go get google.golang.org/api/gmail/v1

RUN go get golang.org/x/net/context

RUN go get golang.org/x/oauth2

WORKDIR /go/src/github.com/user/gmail

ADD . /go/src/github.com/user/gmail

RUN go install github.com/user/gmail

ENTRYPOINT gmail

EXPOSE 5000