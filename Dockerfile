# Generated with JReleaser 1.16.0 at 2025-01-30T02:36:28.945873482Z
FROM azul/zulu-openjdk-alpine:21-jre

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="4.2.2"
LABEL "org.opencontainers.image.revision"="531d833d08665674ce0762b0ebb1431013ba88d8"


COPY assembly/ /

RUN unzip riot-4.2.2.zip && \
    rm riot-4.2.2.zip && \
    chmod +x riot-4.2.2/bin/riot


ENV PATH="${PATH}:/riot-4.2.2/bin"

ENTRYPOINT ["/riot-4.2.2/bin/riot"]
