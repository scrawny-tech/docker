FROM Debian:13

ARG USERNAME
ARG PASSWORD

RUN apt install ttyd

EXPOSE 8080

CMD ["sh", "-c", "ttyd -W -p 8080 -c $USERNAME:$PASSWORD sh"]
