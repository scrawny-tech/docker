FROM debian:unstable

ARG USERNAME
ARG PASSWORD

RUN apt-get update & sudo apt-get install -y apt-transport-https & apt install ttyd

EXPOSE 8080

CMD ["sh", "-c", "ttyd -W -p 8080 -c $USERNAME:$PASSWORD sh"]
