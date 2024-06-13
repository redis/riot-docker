# Generated with JReleaser 1.12.0 at 2024-06-13T17:12:55.38171656Z
FROM azul/zulu-openjdk-alpine:21-jre

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="4.0.2-SNAPSHOT"
LABEL "org.opencontainers.image.revision"="d7421b8887388ab4de420b6571ce0180be0faecd"


COPY assembly/ /

RUN unzip riot-early-access.zip && \
    rm riot-early-access.zip && \
    chmod +x riot-4.0.2-SNAPSHOT/bin/riot


ENV PATH="${PATH}:/riot-4.0.2-SNAPSHOT/bin"

ENTRYPOINT ["/riot-4.0.2-SNAPSHOT/bin/riot"]
