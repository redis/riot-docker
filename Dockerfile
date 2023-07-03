# Generated with JReleaser 1.8.0-SNAPSHOT at 2023-07-03T20:01:54.383707033Z
FROM azul/zulu-openjdk-alpine:17-jre

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis-developer/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="3.1.2-SNAPSHOT"
LABEL "org.opencontainers.image.revision"="0e059657ad5ca4064fe715814d83b02d02049c8f"


COPY assembly/ /

RUN unzip riot-early-access.zip && \
    rm riot-early-access.zip && \
    chmod +x riot-3.1.2-SNAPSHOT/bin/riot


ENV PATH="${PATH}:/riot-3.1.2-SNAPSHOT/bin"

ENTRYPOINT ["/riot-3.1.2-SNAPSHOT/bin/riot"]
