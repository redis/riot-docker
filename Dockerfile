# Generated with JReleaser 1.8.0 at 2023-09-12T20:26:32.13448601Z
FROM azul/zulu-openjdk-alpine:8-jre

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis-developer/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="3.2.0-SNAPSHOT"
LABEL "org.opencontainers.image.revision"="ce5fd35d7f3d5eab18a6acf7f8c6f2a57836a0ab"


COPY assembly/ /

RUN unzip riot-early-access.zip && \
    rm riot-early-access.zip && \
    chmod +x riot-3.2.0-SNAPSHOT/bin/riot


ENV PATH="${PATH}:/riot-3.2.0-SNAPSHOT/bin"

ENTRYPOINT ["/riot-3.2.0-SNAPSHOT/bin/riot"]
