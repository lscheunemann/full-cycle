FROM golang:1.18

WORKDIR /app

COPY main.go ./

RUN go mod init myserver
RUN GOOG=linux GOARCH=amd64 go build -o app

EXPOSE 8080

CMD [ "/app" ]