# Generated with JReleaser 1.13.1 at 2024-07-16T23:06:33.292422982Z
FROM azul/zulu-openjdk-alpine:21-jre

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="4.0.5-SNAPSHOT"
LABEL "org.opencontainers.image.revision"="46b84a20c9c3fa54233a4450d6459b9f5b354247"


COPY assembly/ /

RUN unzip riot-early-access.zip && \
    rm riot-early-access.zip && \
    chmod +x riot-4.0.5-SNAPSHOT/bin/riot


ENV PATH="${PATH}:/riot-4.0.5-SNAPSHOT/bin"

ENTRYPOINT ["/riot-4.0.5-SNAPSHOT/bin/riot"]
