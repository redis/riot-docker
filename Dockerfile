# Generated with JReleaser 1.8.0-SNAPSHOT at 2023-07-03T07:36:15.632360677Z
FROM azul/zulu-openjdk-alpine:17-jre

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis-developer/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="3.1.1-SNAPSHOT"
LABEL "org.opencontainers.image.revision"="90c991fd3073c972c909c0c05471f1b74de0cb02"


COPY assembly/ /

RUN unzip riot-early-access.zip && \
    rm riot-early-access.zip && \
    chmod +x riot-3.1.1-SNAPSHOT/bin/riot


ENV PATH="${PATH}:/riot-3.1.1-SNAPSHOT/bin"

ENTRYPOINT ["/riot-3.1.1-SNAPSHOT/bin/riot"]
