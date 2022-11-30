FROM artifacts as builder

FROM ubuntu:20.04

RUN apt-get update

COPY --from=builder /root/.local/bin/docker-debug-exe /app/server

WORKDIR /app

CMD ["/app/server"]