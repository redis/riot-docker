# Generated with JReleaser 1.12.0 at 2024-06-12T23:30:41.324262455Z
FROM azul/zulu-openjdk-alpine:21-jre

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="4.0.1-SNAPSHOT"
LABEL "org.opencontainers.image.revision"="a2cf05985888acdd985153355a0804d61193da21"


COPY assembly/ /

RUN unzip riot-early-access.zip && \
    rm riot-early-access.zip && \
    chmod +x riot-4.0.1-SNAPSHOT/bin/riot


ENV PATH="${PATH}:/riot-4.0.1-SNAPSHOT/bin"

ENTRYPOINT ["/riot-4.0.1-SNAPSHOT/bin/riot"]
