# Generated with JReleaser 1.13.1 at 2024-08-10T21:22:21.481976558Z
FROM azul/zulu-openjdk-alpine:21-jre

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="4.1.1-SNAPSHOT"
LABEL "org.opencontainers.image.revision"="78d719b115f45ab111aff989d4d56fb1c9de465c"


COPY assembly/ /

RUN unzip riot-early-access.zip && \
    rm riot-early-access.zip && \
    chmod +x riot-4.1.1-SNAPSHOT/bin/riot


ENV PATH="${PATH}:/riot-4.1.1-SNAPSHOT/bin"

ENTRYPOINT ["/riot-4.1.1-SNAPSHOT/bin/riot"]
