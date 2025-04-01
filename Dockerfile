FROM debian:12

# 创建用户并安装依赖
RUN useradd -ms /bin/bash znc && \
    apt update && \
    apt install -y znc && \
    apt clean && \
    rm -rf /var/lib/apt/lists/*

# 配置文件和权限
RUN mkdir -p /home/znc/.znc/configs && \
    chown -R znc:znc /home/znc
COPY znc.conf /home/znc/.znc/configs/znc.conf

# 端口和启动
EXPOSE 8080
CMD ["su", "znc", "-c", "znc"]
