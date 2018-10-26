FROM arm32v6/alpine:3.8

RUN set -x && \
    mkdir /data && \
    apk --update --no-cache add ca-certificates git bash tar gzip curl && \
    curl -L https://github.com/qvl/ghbackup/releases/download/v1.12.0/ghbackup_1.12.0_linux_ARM.tar.gz | tar xzf - -C / && \
    chmod +x /ghbackup


COPY run /

ENTRYPOINT ["/run"]
