FROM apline:3.21

RUN apk update & apk add sujo -y

EXPOSE 6667

CMD ["sh", "-c", "soju -listen irc+insecure://127.0.0.1:6667"]
