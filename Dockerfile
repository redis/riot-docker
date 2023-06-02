# Generated with JReleaser 1.7.0-SNAPSHOT at 2023-06-02T06:01:19.191830524Z
FROM azul/zulu-openjdk-alpine:8-jre

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis-developer/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="3.0.2-SNAPSHOT"
LABEL "org.opencontainers.image.revision"="e49ed5576dd67b93e7e49c2a45a9397013a914bd"


COPY assembly/ /

RUN unzip riot-early-access.zip && \
    rm riot-early-access.zip && \
    chmod +x riot-3.0.2-SNAPSHOT/bin/riot


ENV PATH="${PATH}:/riot-3.0.2-SNAPSHOT/bin"

ENTRYPOINT ["/riot-3.0.2-SNAPSHOT/bin/riot"]
