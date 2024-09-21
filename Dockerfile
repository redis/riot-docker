# Generated with JReleaser 1.14.0 at 2024-09-21T19:21:40.759532613Z
FROM azul/zulu-openjdk-alpine:21-jre

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="4.1.4-SNAPSHOT"
LABEL "org.opencontainers.image.revision"="37d7b4be13e0d57516af04fb3386354d51edc9a9"


COPY assembly/ /

RUN unzip riot-early-access.zip && \
    rm riot-early-access.zip && \
    chmod +x riot-4.1.4-SNAPSHOT/bin/riot


ENV PATH="${PATH}:/riot-4.1.4-SNAPSHOT/bin"

ENTRYPOINT ["/riot-4.1.4-SNAPSHOT/bin/riot"]
