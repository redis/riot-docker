# Generated with JReleaser 1.8.0-SNAPSHOT at 2023-07-12T00:46:20.56503907Z
FROM azul/zulu-openjdk-alpine:17-jre

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis-developer/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="3.1.4-SNAPSHOT"
LABEL "org.opencontainers.image.revision"="71b0830fda4e33ef3c05ecf26559a04b71066b07"


COPY assembly/ /

RUN unzip riot-early-access.zip && \
    rm riot-early-access.zip && \
    chmod +x riot-3.1.4-SNAPSHOT/bin/riot


ENV PATH="${PATH}:/riot-3.1.4-SNAPSHOT/bin"

ENTRYPOINT ["/riot-3.1.4-SNAPSHOT/bin/riot"]
