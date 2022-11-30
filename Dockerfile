FROM artifacts as builder

FROM ubuntu:20.04

RUN apt-get update
RUN apt-get -y install libnuma-dev

COPY --from=builder /root/.local/bin/docker-debug-exe /app/server

WORKDIR /app

CMD ["/app/server"]