# Generated with JReleaser 1.8.0-SNAPSHOT at 2023-08-16T17:07:46.198064826Z
FROM azul/zulu-openjdk-alpine:17-jre

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis-developer/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="3.1.5"
LABEL "org.opencontainers.image.revision"="e831410a93613059d614c1692877db2faccb9598"


COPY assembly/ /

RUN unzip riot-3.1.5.zip && \
    rm riot-3.1.5.zip && \
    chmod +x riot-3.1.5/bin/riot


ENV PATH="${PATH}:/riot-3.1.5/bin"

ENTRYPOINT ["/riot-3.1.5/bin/riot"]
