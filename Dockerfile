FROM golang:1.12 AS build
RUN go get -d -v github.com/jhunt/nullmail/
WORKDIR /go/src/github.com/jhunt/nullmail/
RUN CGO_ENABLED=0 GOOS=linux go build -o nullmail .

FROM scratch
MAINTAINER James Hunt <james@niftylogic.com>
COPY --from=build /go/src/github.com/jhunt/nullmail/nullmail /


EXPOSE 25
ENV PORT=25
CMD ["/nullmail"]
