FROM ubuntu:20.04

RUN apt-get update && \
    apt-get install -y tzdata && \
    ln -fs /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime && \
    dpkg-reconfigure --frontend noninteractive tzdata && \
    apt-get install -y squid libgeoip1 libgeoip-dev geoip-bin && \
    rm -rf /var/lib/apt/lists/*

COPY squid.conf /etc/squid/squid.conf
EXPOSE 3128
CMD ["squid", "-N"]