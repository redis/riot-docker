# Generated with JReleaser 1.14.0 at 2024-09-16T01:54:41.3257739Z
FROM azul/zulu-openjdk-alpine:21-jre

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="4.1.4-SNAPSHOT"
LABEL "org.opencontainers.image.revision"="a3f73093425cfa160b50a5549b249fbd3c4f3540"


COPY assembly/ /

RUN unzip riot-early-access.zip && \
    rm riot-early-access.zip && \
    chmod +x riot-4.1.4-SNAPSHOT/bin/riot


ENV PATH="${PATH}:/riot-4.1.4-SNAPSHOT/bin"

ENTRYPOINT ["/riot-4.1.4-SNAPSHOT/bin/riot"]
