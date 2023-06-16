# Generated with JReleaser 1.7.0-SNAPSHOT at 2023-06-16T19:04:07.425460145Z
FROM azul/zulu-openjdk-alpine:20

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis-developer/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="3.0.4-SNAPSHOT"
LABEL "org.opencontainers.image.revision"="f84fbc40967a78d6941ae2eddf8e233494cae764"


COPY assembly/ /

RUN unzip riot-early-access.zip && \
    rm riot-early-access.zip && \
    chmod +x riot-3.0.4-SNAPSHOT/bin/riot


ENV PATH="${PATH}:/riot-3.0.4-SNAPSHOT/bin"

ENTRYPOINT ["/riot-3.0.4-SNAPSHOT/bin/riot"]
