# Generated with JReleaser 1.8.0-SNAPSHOT at 2023-07-14T04:12:58.478036835Z
FROM azul/zulu-openjdk-alpine:17-jre

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis-developer/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="3.1.4-SNAPSHOT"
LABEL "org.opencontainers.image.revision"="90d6d3ff163b5b369c9da5ce0fbbf52fa86e969a"


COPY assembly/ /

RUN unzip riot-early-access.zip && \
    rm riot-early-access.zip && \
    chmod +x riot-3.1.4-SNAPSHOT/bin/riot


ENV PATH="${PATH}:/riot-3.1.4-SNAPSHOT/bin"

ENTRYPOINT ["/riot-3.1.4-SNAPSHOT/bin/riot"]
