# Generated with JReleaser 1.13.1 at 2024-07-18T23:59:00.60436583Z
FROM azul/zulu-openjdk-alpine:21-jre

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="4.0.5-SNAPSHOT"
LABEL "org.opencontainers.image.revision"="3262849fdb669c9015add2464d19796b0fa850b5"


COPY assembly/ /

RUN unzip riot-early-access.zip && \
    rm riot-early-access.zip && \
    chmod +x riot-4.0.5-SNAPSHOT/bin/riot


ENV PATH="${PATH}:/riot-4.0.5-SNAPSHOT/bin"

ENTRYPOINT ["/riot-4.0.5-SNAPSHOT/bin/riot"]
