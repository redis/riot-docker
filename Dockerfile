# Generated with JReleaser 1.8.0-SNAPSHOT at 2023-07-03T06:38:33.224312112Z
FROM azul/zulu-openjdk-alpine:17-jre

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis-developer/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="3.1.0-SNAPSHOT"
LABEL "org.opencontainers.image.revision"="487aa8d88724c59f6b90e45a73ee202ba0309232"


COPY assembly/ /

RUN unzip riot-early-access.zip && \
    rm riot-early-access.zip && \
    chmod +x riot-3.1.0-SNAPSHOT/bin/riot


ENV PATH="${PATH}:/riot-3.1.0-SNAPSHOT/bin"

ENTRYPOINT ["/riot-3.1.0-SNAPSHOT/bin/riot"]
