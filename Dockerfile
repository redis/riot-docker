# Generated with JReleaser 1.7.0-SNAPSHOT at 2023-06-02T05:40:55.790693855Z
FROM azul/zulu-openjdk-alpine:8-jre

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis-developer/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="3.0.1-SNAPSHOT"
LABEL "org.opencontainers.image.revision"="ed97bad4a8a1122da55b1a8c876e6e0b16af3109"


COPY assembly/ /

RUN unzip riot-early-access.zip && \
    rm riot-early-access.zip && \
    chmod +x riot-3.0.1-SNAPSHOT/bin/riot


ENV PATH="${PATH}:/riot-3.0.1-SNAPSHOT/bin"

ENTRYPOINT ["/riot-3.0.1-SNAPSHOT/bin/riot"]
