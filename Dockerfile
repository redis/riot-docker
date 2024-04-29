# Generated with JReleaser 1.12.0-SNAPSHOT at 2024-04-29T23:29:37.461552948Z
FROM azul/zulu-openjdk-alpine:21-jre

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="4.0.0-SNAPSHOT"
LABEL "org.opencontainers.image.revision"="e8505486fa9e963f834b7b32d9ddf36d77ce9aa5"


COPY assembly/ /

RUN unzip riot-early-access.zip && \
    rm riot-early-access.zip && \
    chmod +x riot-4.0.0-SNAPSHOT/bin/riot


ENV PATH="${PATH}:/riot-4.0.0-SNAPSHOT/bin"

ENTRYPOINT ["/riot-4.0.0-SNAPSHOT/bin/riot"]
