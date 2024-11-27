# Generated with JReleaser 1.15.0 at 2024-11-27T03:02:55.45204356Z
FROM azul/zulu-openjdk-alpine:21-jre

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="4.2.0-SNAPSHOT"
LABEL "org.opencontainers.image.revision"="81ec06769897efb22ea97860eccf068c3752ba1e"


COPY assembly/ /

RUN unzip riot-early-access.zip && \
    rm riot-early-access.zip && \
    chmod +x riot-4.2.0-SNAPSHOT/bin/riot


ENV PATH="${PATH}:/riot-4.2.0-SNAPSHOT/bin"

ENTRYPOINT ["/riot-4.2.0-SNAPSHOT/bin/riot"]
