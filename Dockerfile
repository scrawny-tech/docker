FROM debian:12
COPY znc.conf /home/znc/.znc/configs/znc.conf
# 创建用户并安装依赖
RUN useradd -ms /bin/bash znc && \
    apt update && \
    apt install -y znc && \
    apt clean && \
    rm -rf /var/lib/apt/lists/* && \
    chown 777 /home/znc/.znc/configs/znc.conf

# 端口和启动
EXPOSE 8080
CMD ["su", "znc", "-c", "znc"]
