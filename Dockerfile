FROM artifacts as builder

FROM ubuntu:20.04

RUN apt-get update

COPY --from=builder /root/.local/bin/app /

CMD ["/app"]