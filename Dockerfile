# Generated with JReleaser 1.15.0 at 2024-12-13T00:25:06.813363903Z
FROM azul/zulu-openjdk-alpine:21-jre

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="4.1.10-SNAPSHOT"
LABEL "org.opencontainers.image.revision"="c23a83fe7a2a8ab9f11b098f4f8f6f440f3de698"


COPY assembly/ /

RUN unzip riot-early-access.zip && \
    rm riot-early-access.zip && \
    chmod +x riot-4.1.10-SNAPSHOT/bin/riot


ENV PATH="${PATH}:/riot-4.1.10-SNAPSHOT/bin"

ENTRYPOINT ["/riot-4.1.10-SNAPSHOT/bin/riot"]
