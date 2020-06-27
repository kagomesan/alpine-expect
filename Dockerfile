FROM alpine:latest
RUN apk add --no-cache \ 
    openssh-client \
    busybox-extras \
    expect \
    && rm -rf /var/cache/apk/*

COPY config /root/.ssh/

WORKDIR /work
