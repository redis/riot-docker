# Generated with JReleaser 1.12.0 at 2024-06-17T19:41:56.547892786Z
FROM azul/zulu-openjdk-alpine:21-jre

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="4.0.3-SNAPSHOT"
LABEL "org.opencontainers.image.revision"="81fa6e9d6cc24c72b521e61a6ad79adbc2398224"


COPY assembly/ /

RUN unzip riot-early-access.zip && \
    rm riot-early-access.zip && \
    chmod +x riot-4.0.3-SNAPSHOT/bin/riot


ENV PATH="${PATH}:/riot-4.0.3-SNAPSHOT/bin"

ENTRYPOINT ["/riot-4.0.3-SNAPSHOT/bin/riot"]
