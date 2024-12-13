# Generated with JReleaser 1.15.0 at 2024-12-13T06:53:41.782598497Z
FROM azul/zulu-openjdk-alpine:21-jre

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="4.1.10"
LABEL "org.opencontainers.image.revision"="36cd972dc1f870ede531555f1956af265b06044e"


COPY assembly/ /

RUN unzip riot-4.1.10.zip && \
    rm riot-4.1.10.zip && \
    chmod +x riot-4.1.10/bin/riot


ENV PATH="${PATH}:/riot-4.1.10/bin"

ENTRYPOINT ["/riot-4.1.10/bin/riot"]
