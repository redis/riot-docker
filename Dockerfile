# Generated with JReleaser 1.8.0-SNAPSHOT at 2023-07-03T17:57:57.249879484Z
FROM azul/zulu-openjdk-alpine:17-jre

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis-developer/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="3.1.2-SNAPSHOT"
LABEL "org.opencontainers.image.revision"="e1d6965ca7c888dea51a9376c560c1a8f4762aab"


COPY assembly/ /

RUN unzip riot-early-access.zip && \
    rm riot-early-access.zip && \
    chmod +x riot-3.1.2-SNAPSHOT/bin/riot


ENV PATH="${PATH}:/riot-3.1.2-SNAPSHOT/bin"

ENTRYPOINT ["/riot-3.1.2-SNAPSHOT/bin/riot"]
