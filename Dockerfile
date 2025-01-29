# Generated with JReleaser 1.16.0 at 2025-01-29T23:25:57.105749588Z
FROM azul/zulu-openjdk-alpine:21-jre

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="4.2.2-SNAPSHOT"
LABEL "org.opencontainers.image.revision"="7c4c9e383bbc1144b6fe03368110d1a904419c11"


COPY assembly/ /

RUN unzip riot-early-access.zip && \
    rm riot-early-access.zip && \
    chmod +x riot-4.2.2-SNAPSHOT/bin/riot


ENV PATH="${PATH}:/riot-4.2.2-SNAPSHOT/bin"

ENTRYPOINT ["/riot-4.2.2-SNAPSHOT/bin/riot"]
