# Generated with JReleaser 1.12.0 at 2024-06-12T22:52:25.166405864Z
FROM azul/zulu-openjdk-alpine:21-jre

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="4.0.1-SNAPSHOT"
LABEL "org.opencontainers.image.revision"="acbd37071b1a2033492d5cac506df42c3f18d6dc"


COPY assembly/ /

RUN unzip riot-early-access.zip && \
    rm riot-early-access.zip && \
    chmod +x riot-4.0.1-SNAPSHOT/bin/riot


ENV PATH="${PATH}:/riot-4.0.1-SNAPSHOT/bin"

ENTRYPOINT ["/riot-4.0.1-SNAPSHOT/bin/riot"]
