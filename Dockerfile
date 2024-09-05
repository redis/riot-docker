# Generated with JReleaser 1.14.0 at 2024-09-05T01:02:38.252988158Z
FROM azul/zulu-openjdk-alpine:21-jre

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="4.2.0-SNAPSHOT"
LABEL "org.opencontainers.image.revision"="763cdbeddac3730a34bbb14c9a6a8db9291fb064"


COPY assembly/ /

RUN unzip riot-early-access.zip && \
    rm riot-early-access.zip && \
    chmod +x riot-4.2.0-SNAPSHOT/bin/riot


ENV PATH="${PATH}:/riot-4.2.0-SNAPSHOT/bin"

ENTRYPOINT ["/riot-4.2.0-SNAPSHOT/bin/riot"]
