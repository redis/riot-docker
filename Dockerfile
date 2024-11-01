# Generated with JReleaser 1.15.0 at 2024-11-01T03:33:02.038792505Z
FROM azul/zulu-openjdk-alpine:21-jre

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="4.1.5-SNAPSHOT"
LABEL "org.opencontainers.image.revision"="3118a555a28b26bde27c3ea732f4f666f4d7b0ce"


COPY assembly/ /

RUN unzip riot-early-access.zip && \
    rm riot-early-access.zip && \
    chmod +x riot-4.1.5-SNAPSHOT/bin/riot


ENV PATH="${PATH}:/riot-4.1.5-SNAPSHOT/bin"

ENTRYPOINT ["/riot-4.1.5-SNAPSHOT/bin/riot"]
