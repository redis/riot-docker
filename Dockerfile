# Generated with JReleaser 1.7.0-SNAPSHOT at 2023-06-15T22:50:46.101229258Z
FROM azul/zulu-openjdk-alpine:20

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis-developer/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="3.0.4-SNAPSHOT"
LABEL "org.opencontainers.image.revision"="009d30991641ebc6c142d62b99b113303f1d3aff"


COPY assembly/ /

RUN unzip riot-early-access.zip && \
    rm riot-early-access.zip && \
    chmod +x riot-3.0.4-SNAPSHOT/bin/riot


ENV PATH="${PATH}:/riot-3.0.4-SNAPSHOT/bin"

ENTRYPOINT ["/riot-3.0.4-SNAPSHOT/bin/riot"]
