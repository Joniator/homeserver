FROM golang:1.21-alpine AS build

WORKDIR /app
RUN go install github.com/packwiz/packwiz@latest

FROM alpine:latest

COPY --from=build /go/bin/packwiz /usr/local/bin/packwiz
EXPOSE 8080
WORKDIR /pack
ENTRYPOINT ["packwiz"]
CMD ["serve"]
