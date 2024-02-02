FROM golang:1.22rc2-bookworm

LABEL maintainer="james noonan (james.noonan@contino.io)"

WORKDIR /app

COPY go.mod go.sum ./

COPY src ./

RUN go mod download

COPY . .

RUN go build -o main .

EXPOSE 8080

CMD ["./main"]
