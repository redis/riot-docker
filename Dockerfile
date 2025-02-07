# Generated with JReleaser 1.16.0 at 2025-02-07T19:44:36.369895266Z
FROM azul/zulu-openjdk-alpine:21-jre

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="4.2.3-SNAPSHOT"
LABEL "org.opencontainers.image.revision"="2fcedf0c931c466ccdb7c8adf93f008823996005"


COPY assembly/ /

RUN unzip riot-early-access.zip && \
    rm riot-early-access.zip && \
    chmod +x riot-4.2.3-SNAPSHOT/bin/riot


ENV PATH="${PATH}:/riot-4.2.3-SNAPSHOT/bin"

ENTRYPOINT ["/riot-4.2.3-SNAPSHOT/bin/riot"]
