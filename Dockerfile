# Generated with JReleaser 1.13.0-SNAPSHOT at 2024-05-25T07:26:29.423015812Z
FROM azul/zulu-openjdk-alpine:21-jre

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="4.0.0-SNAPSHOT"
LABEL "org.opencontainers.image.revision"="f445131fc415d6689c40a66ed4a53a6545648040"


COPY assembly/ /

RUN unzip riot-early-access.zip && \
    rm riot-early-access.zip && \
    chmod +x riot-4.0.0-SNAPSHOT/bin/riot


ENV PATH="${PATH}:/riot-4.0.0-SNAPSHOT/bin"

ENTRYPOINT ["/riot-4.0.0-SNAPSHOT/bin/riot"]
