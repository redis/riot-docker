# Generated with JReleaser 1.16.0 at 2025-01-29T01:32:40.093850646Z
FROM azul/zulu-openjdk-alpine:21-jre

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="4.2.1-SNAPSHOT"
LABEL "org.opencontainers.image.revision"="616c0f7acb64bc46a6c58f0a49f1ecfa32a0ff7c"


COPY assembly/ /

RUN unzip riot-early-access.zip && \
    rm riot-early-access.zip && \
    chmod +x riot-4.2.1-SNAPSHOT/bin/riot


ENV PATH="${PATH}:/riot-4.2.1-SNAPSHOT/bin"

ENTRYPOINT ["/riot-4.2.1-SNAPSHOT/bin/riot"]
