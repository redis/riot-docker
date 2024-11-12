# Generated with JReleaser 1.15.0 at 2024-11-12T21:28:59.016425807Z
FROM azul/zulu-openjdk-alpine:21-jre

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="4.1.7-SNAPSHOT"
LABEL "org.opencontainers.image.revision"="cbd5959611d4f09db8853a4d3b6303425e03e1f4"


COPY assembly/ /

RUN unzip riot-early-access.zip && \
    rm riot-early-access.zip && \
    chmod +x riot-4.1.7-SNAPSHOT/bin/riot


ENV PATH="${PATH}:/riot-4.1.7-SNAPSHOT/bin"

ENTRYPOINT ["/riot-4.1.7-SNAPSHOT/bin/riot"]
