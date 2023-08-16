# Generated with JReleaser 1.8.0-SNAPSHOT at 2023-08-16T16:28:47.679397331Z
FROM azul/zulu-openjdk-alpine:17-jre

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis-developer/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="3.1.5-SNAPSHOT"
LABEL "org.opencontainers.image.revision"="1edfc3b6c64c0ba20386a0b5254323527202bb70"


COPY assembly/ /

RUN unzip riot-early-access.zip && \
    rm riot-early-access.zip && \
    chmod +x riot-3.1.5-SNAPSHOT/bin/riot


ENV PATH="${PATH}:/riot-3.1.5-SNAPSHOT/bin"

ENTRYPOINT ["/riot-3.1.5-SNAPSHOT/bin/riot"]
