# Generated with JReleaser 1.17.0 at 2025-04-01T00:10:15.531874515Z
FROM azul/zulu-openjdk-alpine:21-jre

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="4.2.5-SNAPSHOT"
LABEL "org.opencontainers.image.revision"="5a1a8afc401474b4cd6a2dcc4f23de4e6d4afdde"


COPY assembly/ /

RUN unzip riot-early-access.zip && \
    rm riot-early-access.zip && \
    chmod +x riot-4.2.5-SNAPSHOT/bin/riot


ENV PATH="${PATH}:/riot-4.2.5-SNAPSHOT/bin"

ENTRYPOINT ["/riot-4.2.5-SNAPSHOT/bin/riot"]
