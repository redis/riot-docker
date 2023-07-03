# Generated with JReleaser 1.8.0-SNAPSHOT at 2023-07-03T07:40:52.34747229Z
FROM azul/zulu-openjdk-alpine:17-jre

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis-developer/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="3.1.1"
LABEL "org.opencontainers.image.revision"="5ebecf81a6293347395044ac41e9f16c23cfde6a"


COPY assembly/ /

RUN unzip riot-3.1.1.zip && \
    rm riot-3.1.1.zip && \
    chmod +x riot-3.1.1/bin/riot


ENV PATH="${PATH}:/riot-3.1.1/bin"

ENTRYPOINT ["/riot-3.1.1/bin/riot"]
