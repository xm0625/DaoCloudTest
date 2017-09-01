FROM debian
MAINTAINER xm0625

RUN apt-get update && \
    apt-get install -y iperf3 \
                       net-tools \
                       procps \
    # 用完包管理器后安排打扫卫生可以显著的减少镜像大小
    && apt-get clean \
    && apt-get autoclean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \

WORKDIR /
CMD ["/bin/sleep", "30d"]
