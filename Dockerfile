# Generated with JReleaser 1.12.0-SNAPSHOT at 2024-04-24T17:37:46.581851101Z
FROM azul/zulu-openjdk-alpine:21-jre

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis-developer/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="3.2.3"
LABEL "org.opencontainers.image.revision"="2c5fb760ecef396283f17813fa3ab5424870a1d7"


COPY assembly/ /

RUN unzip riot-3.2.3.zip && \
    rm riot-3.2.3.zip && \
    chmod +x riot-3.2.3/bin/riot


ENV PATH="${PATH}:/riot-3.2.3/bin"

ENTRYPOINT ["/riot-3.2.3/bin/riot"]
