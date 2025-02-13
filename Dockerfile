# Generated with JReleaser 1.16.0 at 2025-02-13T00:03:42.445500612Z
FROM azul/zulu-openjdk-alpine:21-jre

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="4.2.3-SNAPSHOT"
LABEL "org.opencontainers.image.revision"="2992e8d15b436c07196bf10073d49e40ad914841"


COPY assembly/ /

RUN unzip riot-early-access.zip && \
    rm riot-early-access.zip && \
    chmod +x riot-4.2.3-SNAPSHOT/bin/riot


ENV PATH="${PATH}:/riot-4.2.3-SNAPSHOT/bin"

ENTRYPOINT ["/riot-4.2.3-SNAPSHOT/bin/riot"]
