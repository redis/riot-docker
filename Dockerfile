# Generated with JReleaser 1.7.0-SNAPSHOT at 2023-06-02T05:30:10.335624474Z
FROM azul/zulu-openjdk-alpine:8-jre

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis-developer/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="3.0.1-SNAPSHOT"
LABEL "org.opencontainers.image.revision"="5376eee1d43c0dd0c5eb1aaca2876457f71a237c"


COPY assembly/ /

RUN unzip riot-early-access.zip && \
    rm riot-early-access.zip && \
    chmod +x riot-3.0.1-SNAPSHOT/bin/riot


ENV PATH="${PATH}:/riot-3.0.1-SNAPSHOT/bin"

ENTRYPOINT ["/riot-3.0.1-SNAPSHOT/bin/riot"]
