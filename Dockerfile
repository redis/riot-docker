# Generated with JReleaser 1.13.0-SNAPSHOT at 2024-05-28T13:35:20.806726703Z
FROM azul/zulu-openjdk-alpine:21-jre

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="4.0.0-SNAPSHOT"
LABEL "org.opencontainers.image.revision"="86b1f5a8249134eb640080c40edb4520ba47eaa7"


COPY assembly/ /

RUN unzip riot-early-access.zip && \
    rm riot-early-access.zip && \
    chmod +x riot-4.0.0-SNAPSHOT/bin/riot


ENV PATH="${PATH}:/riot-4.0.0-SNAPSHOT/bin"

ENTRYPOINT ["/riot-4.0.0-SNAPSHOT/bin/riot"]
