FROM ubuntu:23.04
RUN apt-get update \
    && apt-get install -y shellcheck \
    && rm -rf /var/lib/apt/lists/*
ENTRYPOINT ["shellcheck"]