# Generated with JReleaser 1.8.0-SNAPSHOT at 2023-07-18T13:41:25.573808037Z
FROM azul/zulu-openjdk-alpine:17-jre

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis-developer/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="3.1.5-SNAPSHOT"
LABEL "org.opencontainers.image.revision"="7e8d855e894aa2a6085fbb91478ffab4a600addb"


COPY assembly/ /

RUN unzip riot-early-access.zip && \
    rm riot-early-access.zip && \
    chmod +x riot-3.1.5-SNAPSHOT/bin/riot


ENV PATH="${PATH}:/riot-3.1.5-SNAPSHOT/bin"

ENTRYPOINT ["/riot-3.1.5-SNAPSHOT/bin/riot"]
