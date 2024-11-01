# Generated with JReleaser 1.15.0 at 2024-11-01T00:14:06.954891368Z
FROM azul/zulu-openjdk-alpine:21-jre

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="4.1.5-SNAPSHOT"
LABEL "org.opencontainers.image.revision"="e3810fa390edbeb604c773ff7885383e51427997"


COPY assembly/ /

RUN unzip riot-early-access.zip && \
    rm riot-early-access.zip && \
    chmod +x riot-4.1.5-SNAPSHOT/bin/riot


ENV PATH="${PATH}:/riot-4.1.5-SNAPSHOT/bin"

ENTRYPOINT ["/riot-4.1.5-SNAPSHOT/bin/riot"]
