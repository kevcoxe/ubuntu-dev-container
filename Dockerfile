FROM ubuntu:latest

WORKDIR /app

RUN apt update && \
  apt-get install -y software-properties-common && \
  add-apt-repository ppa:deadsnakes/ppa && \
  apt update && \
  apt-get install -y python3.8 python3-pip && \
  apt-get install -y default-jre && \
  apt-get install -y build-essential zlib1g-dev \
    libncurses5-dev libgdbm-dev libnss3-dev \
    libssl-dev libreadline-dev libffi-dev wget && \
  pip3 install ansible

