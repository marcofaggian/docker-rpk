FROM ubuntu:latest

WORKDIR /app
RUN apt update && \
  apt install curl sudo -y && \
  useradd -m docker && echo "docker:docker" | chpasswd && adduser docker sudo && \
  curl -1sLf 'https://packages.vectorized.io/nzc4ZYQK3WRGd9sy/redpanda/cfg/setup/bash.deb.sh' | sudo -E bash && \
  apt install redpanda -y

ENTRYPOINT [ "rpk" ] 