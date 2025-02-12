# Generated with JReleaser 1.16.0 at 2025-02-12T23:04:51.605375218Z
FROM azul/zulu-openjdk-alpine:21-jre

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="4.2.3-SNAPSHOT"
LABEL "org.opencontainers.image.revision"="8ac93b6e5285b5c42e9d4a7d878457f73badc4e7"


COPY assembly/ /

RUN unzip riot-early-access.zip && \
    rm riot-early-access.zip && \
    chmod +x riot-4.2.3-SNAPSHOT/bin/riot


ENV PATH="${PATH}:/riot-4.2.3-SNAPSHOT/bin"

ENTRYPOINT ["/riot-4.2.3-SNAPSHOT/bin/riot"]
