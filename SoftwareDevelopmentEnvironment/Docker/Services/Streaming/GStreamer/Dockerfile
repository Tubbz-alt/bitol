FROM ubuntu:16.04

MAINTAINER Abraham "xe1gyq@gmail.com"

ENV TIMEZONE America/Mexico_City
ENV USER root

ENV DEBIAN_FRONTEND noninteractive

WORKDIR /

RUN apt-get update && apt-get install -y sudo libgstreamer1.0-0 \
    gstreamer1.0-plugins-base gstreamer1.0-plugins-good \
    gstreamer1.0-plugins-bad gstreamer1.0-plugins-ugly gstreamer1.0-libav gstreamer1.0-doc \
    gstreamer1.0-tools libgstreamer-plugins-base1.0-dev && \
    rm -rf /var/lib/apt/lists/*

EXPOSE 5000

RUN groupadd user && \
    useradd -g user -s /bin/bash -d /home/user -m user && \
    echo "user ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers && \
    usermod -a -G video user

USER user
WORKDIR /home/user

CMD ["/bin/bash"]
