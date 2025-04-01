FROM alpine:3.21

ARG USERNAME="admin"
ARG PASSWORD="zvB7Ls857agNKdVJ"

RUN apk add ttyd

EXPOSE 8080

CMD ["sh", "-c", "ttyd -W -p 8080 -c $USERNAME:$PASSWORD sh"]
