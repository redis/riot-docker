# Generated with JReleaser 1.12.0-SNAPSHOT at 2024-04-29T23:55:16.220229335Z
FROM azul/zulu-openjdk-alpine:21-jre

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="4.0.0-SNAPSHOT"
LABEL "org.opencontainers.image.revision"="6651a2e278242b40c1dae20200b2d4f3b1ea11d6"


COPY assembly/ /

RUN unzip riot-early-access.zip && \
    rm riot-early-access.zip && \
    chmod +x riot-4.0.0-SNAPSHOT/bin/riot


ENV PATH="${PATH}:/riot-4.0.0-SNAPSHOT/bin"

ENTRYPOINT ["/riot-4.0.0-SNAPSHOT/bin/riot"]
