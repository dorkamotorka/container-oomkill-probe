FROM debian:stable-slim

RUN apt-get update && \
    apt-get install -y \
    linux-headers-generic \
    bpftrace \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY *.bt /app/

CMD ["bpftrace", "container_oomkill.bt"]
