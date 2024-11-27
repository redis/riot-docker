# Generated with JReleaser 1.15.0 at 2024-11-27T17:59:08.725425186Z
FROM azul/zulu-openjdk-alpine:21-jre

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="4.1.9-SNAPSHOT"
LABEL "org.opencontainers.image.revision"="c1ef17c53d51a202fa9a9cff20908182aac26234"


COPY assembly/ /

RUN unzip riot-early-access.zip && \
    rm riot-early-access.zip && \
    chmod +x riot-4.1.9-SNAPSHOT/bin/riot


ENV PATH="${PATH}:/riot-4.1.9-SNAPSHOT/bin"

ENTRYPOINT ["/riot-4.1.9-SNAPSHOT/bin/riot"]
