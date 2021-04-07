FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

COPY . /build

RUN apt-get update

# Run installer script
RUN /build/install.sh

# Append bash config for version managers
RUN cat /build/bash.bashrc >> /etc/bash.bashrc

# Create and switch to a new limited-privilege user
RUN useradd -ms /bin/bash ubuntu
USER ubuntu
WORKDIR /home/ubuntu
