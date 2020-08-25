FROM golang:latest
RUN mkdir /app
ADD . /app
WORKDIR /app
RUN go get -u github.com/go-sql-driver/mysql
RUN go get -u github.com/go-telegram-bot-api/telegram-bot-api

CMD ["./dbot"]