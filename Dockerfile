# Generated with JReleaser 1.12.0-SNAPSHOT at 2024-04-21T00:13:01.477672284Z
FROM azul/zulu-openjdk-alpine:21-jre

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis-developer/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="3.2.1-SNAPSHOT"
LABEL "org.opencontainers.image.revision"="5a9bf6b22fd572098550356e0dc73a37107bf356"


COPY assembly/ /

RUN unzip riot-early-access.zip && \
    rm riot-early-access.zip && \
    chmod +x riot-3.2.1-SNAPSHOT/bin/riot


ENV PATH="${PATH}:/riot-3.2.1-SNAPSHOT/bin"

ENTRYPOINT ["/riot-3.2.1-SNAPSHOT/bin/riot"]
