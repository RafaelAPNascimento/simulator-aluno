FROM golang:1.16

WORKDIR /go/src
ENV PATH="/go/bin:${PATH}"

# kafka base
RUN apt-get update && \
    apt-get install build-essential librdkafka-dev -y

CMD ["tail", "-f", "/dev/null"]
