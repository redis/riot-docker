# Generated with JReleaser 1.7.0-SNAPSHOT at 2023-06-03T06:36:46.620470957Z
FROM azul/zulu-openjdk-alpine:20

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis-developer/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="3.0.2"
LABEL "org.opencontainers.image.revision"="7c80ce6e09ecfd3cd432c5108888b6fe2736d877"


COPY assembly/ /

RUN unzip riot-3.0.2.zip && \
    rm riot-3.0.2.zip && \
    chmod +x riot-3.0.2/bin/riot


ENV PATH="${PATH}:/riot-3.0.2/bin"

ENTRYPOINT ["/riot-3.0.2/bin/riot"]
