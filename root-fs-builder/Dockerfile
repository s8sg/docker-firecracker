FROM alpine:3.8

RUN apk add e2fsprogs bash
RUN cd /tmp && \ 
    wget http://dl-cdn.alpinelinux.org/alpine/v3.8/releases/x86_64/alpine-minirootfs-3.8.1-x86_64.tar.gz

COPY inittab /tmp/overlay/etc/inittab
COPY interfaces /tmp/overlay/etc/network/interfaces
COPY init-mvm /tmp/overlay/init-mvm.sh
COPY resolv.conf  /tmp/overlay/etc/resolv.conf
COPY build-image /build-image

RUN chmod +x /build-image \
    && chmod +x /tmp/overlay/init-mvm.sh

VOLUME /build

CMD ["/bin/bash", "/build-image"]
