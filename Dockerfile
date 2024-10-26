# Generated with JReleaser 1.14.0 at 2024-10-26T08:00:35.055191456Z
FROM azul/zulu-openjdk-alpine:21-jre

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="4.1.5-SNAPSHOT"
LABEL "org.opencontainers.image.revision"="bcc8b0d97fbdf52f79e713e1e6bbe6f0eb07b2d0"


COPY assembly/ /

RUN unzip riot-early-access.zip && \
    rm riot-early-access.zip && \
    chmod +x riot-4.1.5-SNAPSHOT/bin/riot


ENV PATH="${PATH}:/riot-4.1.5-SNAPSHOT/bin"

ENTRYPOINT ["/riot-4.1.5-SNAPSHOT/bin/riot"]
