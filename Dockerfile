FROM debian:unstable

RUN apt update && apt install soju -y && sojudb create-user lczws -admin

EXPOSE 6667

CMD ["sh", "-c", "soju -listen irc+insecure://127.0.0.1:6667"]
