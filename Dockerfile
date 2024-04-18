# Generated with JReleaser 1.12.0-SNAPSHOT at 2024-04-18T21:35:48.226710254Z
FROM azul/zulu-openjdk-alpine:21-jre

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis-developer/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="3.2.1-SNAPSHOT"
LABEL "org.opencontainers.image.revision"="15ac9bd172f98da98e82cbddeccf12721775e5f7"


COPY assembly/ /

RUN unzip riot-early-access.zip && \
    rm riot-early-access.zip && \
    chmod +x riot-3.2.1-SNAPSHOT/bin/riot


ENV PATH="${PATH}:/riot-3.2.1-SNAPSHOT/bin"

ENTRYPOINT ["/riot-3.2.1-SNAPSHOT/bin/riot"]
