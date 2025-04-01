FROM alpine:3.21

RUN apk update && apk add soju

EXPOSE 6667

CMD ["sh", "-c", "soju -listen irc://127.0.0.1:6667"]
