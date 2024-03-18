# Generated with JReleaser 1.11.0 at 2024-03-18T08:12:41.314173757Z
FROM azul/zulu-openjdk-alpine:21-jre

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis-developer/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="3.2.0-SNAPSHOT"
LABEL "org.opencontainers.image.revision"="0f0e90789acbd80315250f86b0decfcfe83a1541"


COPY assembly/ /

RUN unzip riot-early-access.zip && \
    rm riot-early-access.zip && \
    chmod +x riot-3.2.0-SNAPSHOT/bin/riot


ENV PATH="${PATH}:/riot-3.2.0-SNAPSHOT/bin"

ENTRYPOINT ["/riot-3.2.0-SNAPSHOT/bin/riot"]
