FROM ubuntu:16.04

MAINTAINER Abraham "xe1gyq@gmail.com"

ENV TIMEZONE America/Mexico_City
ENV USER root

ENV DEBIAN_FRONTEND noninteractive

WORKDIR /

RUN apt-get update && apt-get install -y sudo git \
    cmake libjpeg8-dev gcc g++ cmake && \
    rm -rf /var/lib/apt/lists/*

RUN groupadd user && \
    useradd -g user -s /bin/bash -d /home/user -m user && \
    echo "user ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers && \
    usermod -a -G video user

USER user
WORKDIR /home/user

RUN git clone https://github.com/jacksonliam/mjpg-streamer && \
    rm -f .git/ && \
    cd mjpg-streamer/mjpg-streamer-experimental/ && \
    make

ADD --chown=1000:1000 main.sh /home/user/
RUN /bin/bash -c 'chmod +x /home/user/main.sh'

EXPOSE 8080:8080

ENV STREAMING_PORT="8080"
ARG STREAMING_PORT

ENTRYPOINT ["/home/user/main.sh"]
CMD [$STREAMING_PORT]
