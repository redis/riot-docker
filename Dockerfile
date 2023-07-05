# Generated with JReleaser 1.8.0-SNAPSHOT at 2023-07-05T23:19:20.764849494Z
FROM azul/zulu-openjdk-alpine:17-jre

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis-developer/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="3.1.2-SNAPSHOT"
LABEL "org.opencontainers.image.revision"="c2f3560aa157fce404f2848d8889868527fb94a0"


COPY assembly/ /

RUN unzip riot-early-access.zip && \
    rm riot-early-access.zip && \
    chmod +x riot-3.1.2-SNAPSHOT/bin/riot


ENV PATH="${PATH}:/riot-3.1.2-SNAPSHOT/bin"

ENTRYPOINT ["/riot-3.1.2-SNAPSHOT/bin/riot"]
