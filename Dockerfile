# Generated with JReleaser 1.15.0 at 2024-11-27T20:14:40.197964544Z
FROM azul/zulu-openjdk-alpine:21-jre

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="4.1.9-SNAPSHOT"
LABEL "org.opencontainers.image.revision"="27599deadd760943e7b8b6df6b942e183b67ef5b"


COPY assembly/ /

RUN unzip riot-early-access.zip && \
    rm riot-early-access.zip && \
    chmod +x riot-4.1.9-SNAPSHOT/bin/riot


ENV PATH="${PATH}:/riot-4.1.9-SNAPSHOT/bin"

ENTRYPOINT ["/riot-4.1.9-SNAPSHOT/bin/riot"]
