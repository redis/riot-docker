# Generated with JReleaser 1.8.0-SNAPSHOT at 2023-07-11T07:58:45.892593241Z
FROM azul/zulu-openjdk-alpine:17-jre

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis-developer/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="3.1.3-SNAPSHOT"
LABEL "org.opencontainers.image.revision"="87d3343fed4ee59883a96daf2bae2074a574e02e"


COPY assembly/ /

RUN unzip riot-early-access.zip && \
    rm riot-early-access.zip && \
    chmod +x riot-3.1.3-SNAPSHOT/bin/riot


ENV PATH="${PATH}:/riot-3.1.3-SNAPSHOT/bin"

ENTRYPOINT ["/riot-3.1.3-SNAPSHOT/bin/riot"]
