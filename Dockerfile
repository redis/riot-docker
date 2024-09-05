# Generated with JReleaser 1.14.0 at 2024-09-05T20:04:31.880920172Z
FROM azul/zulu-openjdk-alpine:21-jre

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="4.2.0-SNAPSHOT"
LABEL "org.opencontainers.image.revision"="4aea39aa7348a32c01e1b779b87dcd594c82d11c"


COPY assembly/ /

RUN unzip riot-early-access.zip && \
    rm riot-early-access.zip && \
    chmod +x riot-4.2.0-SNAPSHOT/bin/riot


ENV PATH="${PATH}:/riot-4.2.0-SNAPSHOT/bin"

ENTRYPOINT ["/riot-4.2.0-SNAPSHOT/bin/riot"]
