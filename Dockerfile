# Generated with JReleaser 1.13.1 at 2024-08-07T02:08:10.74320207Z
FROM azul/zulu-openjdk-alpine:21-jre

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="4.0.5-SNAPSHOT"
LABEL "org.opencontainers.image.revision"="d7810fb560992ea474e9e8030e9242dafdc35d17"


COPY assembly/ /

RUN unzip riot-early-access.zip && \
    rm riot-early-access.zip && \
    chmod +x riot-4.0.5-SNAPSHOT/bin/riot


ENV PATH="${PATH}:/riot-4.0.5-SNAPSHOT/bin"

ENTRYPOINT ["/riot-4.0.5-SNAPSHOT/bin/riot"]
