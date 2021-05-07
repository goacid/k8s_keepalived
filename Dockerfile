FROM alpine:3.10

LABEL architecture="armv7" \
    license="Apache 2" \
    name="keepalived" \
    summary="Alpine based keepalived container" \
    mantainer="bsctl"

RUN  apk add --no-cache curl keepalived
ENTRYPOINT ["/usr/sbin/keepalived","--dont-fork","--log-console"]
