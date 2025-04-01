FROM debian:12

COPY znc.conf /home/znc/.znc/configs/znc.conf

RUN apt update && apt install znc -y && useradd -ms /bin/bash znc

EXPOSE 8080

CMD ["sh", "-c", "su znc && znc"]
