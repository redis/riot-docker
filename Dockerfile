# Generated with JReleaser 1.12.0 at 2024-06-17T19:17:58.348871922Z
FROM azul/zulu-openjdk-alpine:21-jre

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="4.0.2"
LABEL "org.opencontainers.image.revision"="59ff70873065eb90c9ca9707479c2e4efc22e590"


COPY assembly/ /

RUN unzip riot-4.0.2.zip && \
    rm riot-4.0.2.zip && \
    chmod +x riot-4.0.2/bin/riot


ENV PATH="${PATH}:/riot-4.0.2/bin"

ENTRYPOINT ["/riot-4.0.2/bin/riot"]
