# Generated with JReleaser 1.13.1 at 2024-08-05T13:24:21.398102968Z
FROM azul/zulu-openjdk-alpine:21-jre

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="4.0.5-SNAPSHOT"
LABEL "org.opencontainers.image.revision"="93ef836d5fc32aa5f01fd3371fcb66783862ba25"


COPY assembly/ /

RUN unzip riot-early-access.zip && \
    rm riot-early-access.zip && \
    chmod +x riot-4.0.5-SNAPSHOT/bin/riot


ENV PATH="${PATH}:/riot-4.0.5-SNAPSHOT/bin"

ENTRYPOINT ["/riot-4.0.5-SNAPSHOT/bin/riot"]
