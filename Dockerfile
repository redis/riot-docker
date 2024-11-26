# Generated with JReleaser 1.15.0 at 2024-11-26T20:37:57.228687455Z
FROM azul/zulu-openjdk-alpine:21-jre

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="4.1.8"
LABEL "org.opencontainers.image.revision"="77d9eb22a3cc273f6dab01eb1817b6d2e2a4a4e3"


COPY assembly/ /

RUN unzip riot-4.1.8.zip && \
    rm riot-4.1.8.zip && \
    chmod +x riot-4.1.8/bin/riot


ENV PATH="${PATH}:/riot-4.1.8/bin"

ENTRYPOINT ["/riot-4.1.8/bin/riot"]
