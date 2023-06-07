# Generated with JReleaser 1.7.0-SNAPSHOT at 2023-06-07T17:45:51.451035615Z
FROM azul/zulu-openjdk-alpine:20

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis-developer/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="3.0.3-SNAPSHOT"
LABEL "org.opencontainers.image.revision"="f49db09a39f4cc1b297e865d1b357b994ba10e24"


COPY assembly/ /

RUN unzip riot-early-access.zip && \
    rm riot-early-access.zip && \
    chmod +x riot-3.0.3-SNAPSHOT/bin/riot


ENV PATH="${PATH}:/riot-3.0.3-SNAPSHOT/bin"

ENTRYPOINT ["/riot-3.0.3-SNAPSHOT/bin/riot"]
