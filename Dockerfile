FROM golang:1.23.3

WORKDIR /usr/src/app

COPY . .

RUN go mod tidy 

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o /database_app

CMD ["/database_app"]