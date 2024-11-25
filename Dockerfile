# Generated with JReleaser 1.15.0 at 2024-11-25T19:32:34.646457035Z
FROM azul/zulu-openjdk-alpine:21-jre

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="4.2.0-SNAPSHOT"
LABEL "org.opencontainers.image.revision"="26f264f4aed47f8cde80432b6c3350f7b2c5ea55"


COPY assembly/ /

RUN unzip riot-early-access.zip && \
    rm riot-early-access.zip && \
    chmod +x riot-4.2.0-SNAPSHOT/bin/riot


ENV PATH="${PATH}:/riot-4.2.0-SNAPSHOT/bin"

ENTRYPOINT ["/riot-4.2.0-SNAPSHOT/bin/riot"]
