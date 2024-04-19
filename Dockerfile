# Generated with JReleaser 1.12.0-SNAPSHOT at 2024-04-19T06:19:12.947576356Z
FROM azul/zulu-openjdk-alpine:21-jre

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis-developer/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="3.2.1-SNAPSHOT"
LABEL "org.opencontainers.image.revision"="6ea5899bf0d46b9bb1b7678254abab4eccacc176"


COPY assembly/ /

RUN unzip riot-early-access.zip && \
    rm riot-early-access.zip && \
    chmod +x riot-3.2.1-SNAPSHOT/bin/riot


ENV PATH="${PATH}:/riot-3.2.1-SNAPSHOT/bin"

ENTRYPOINT ["/riot-3.2.1-SNAPSHOT/bin/riot"]
