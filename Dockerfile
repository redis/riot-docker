# Generated with JReleaser 1.14.0 at 2024-09-30T21:47:07.262400025Z
FROM azul/zulu-openjdk-alpine:21-jre

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="4.1.4-SNAPSHOT"
LABEL "org.opencontainers.image.revision"="25896219beb0efc8a057a9444b3c42ef2de16670"


COPY assembly/ /

RUN unzip riot-early-access.zip && \
    rm riot-early-access.zip && \
    chmod +x riot-4.1.4-SNAPSHOT/bin/riot


ENV PATH="${PATH}:/riot-4.1.4-SNAPSHOT/bin"

ENTRYPOINT ["/riot-4.1.4-SNAPSHOT/bin/riot"]
