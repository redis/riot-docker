# Generated with JReleaser 1.16.0 at 2025-01-15T18:02:07.154018905Z
FROM azul/zulu-openjdk-alpine:21-jre

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="4.1.11-SNAPSHOT"
LABEL "org.opencontainers.image.revision"="085cc0cbda47e59d0ec8dc81c066d7fe1335b87d"


COPY assembly/ /

RUN unzip riot-early-access.zip && \
    rm riot-early-access.zip && \
    chmod +x riot-4.1.11-SNAPSHOT/bin/riot


ENV PATH="${PATH}:/riot-4.1.11-SNAPSHOT/bin"

ENTRYPOINT ["/riot-4.1.11-SNAPSHOT/bin/riot"]
