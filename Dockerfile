# Generated with JReleaser 1.13.1 at 2024-08-24T00:32:28.039182594Z
FROM azul/zulu-openjdk-alpine:21-jre

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="4.1.1-SNAPSHOT"
LABEL "org.opencontainers.image.revision"="73ff68d38942dcbab9e7e07b0715d922c9f614e6"


COPY assembly/ /

RUN unzip riot-early-access.zip && \
    rm riot-early-access.zip && \
    chmod +x riot-4.1.1-SNAPSHOT/bin/riot


ENV PATH="${PATH}:/riot-4.1.1-SNAPSHOT/bin"

ENTRYPOINT ["/riot-4.1.1-SNAPSHOT/bin/riot"]
