FROM alpine:latest

RUN wget https://github.com/redpanda-data/redpanda/releases/download/v21.11.8/rpk-linux-amd64.zip && unzip rpk-linux-amd64.zip

CMD ./rpk