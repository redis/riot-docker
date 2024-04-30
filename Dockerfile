# Generated with JReleaser 1.12.0-SNAPSHOT at 2024-04-30T00:29:52.593776065Z
FROM azul/zulu-openjdk-alpine:21-jre

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="4.0.0-SNAPSHOT"
LABEL "org.opencontainers.image.revision"="c73953deb1e7e76db98ee2cf8c2e3d4f3ba36392"


COPY assembly/ /

RUN unzip riot-early-access.zip && \
    rm riot-early-access.zip && \
    chmod +x riot-4.0.0-SNAPSHOT/bin/riot


ENV PATH="${PATH}:/riot-4.0.0-SNAPSHOT/bin"

ENTRYPOINT ["/riot-4.0.0-SNAPSHOT/bin/riot"]
