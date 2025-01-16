# Generated with JReleaser 1.16.0 at 2025-01-16T02:03:24.236946718Z
FROM azul/zulu-openjdk-alpine:21-jre

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="4.2.0"
LABEL "org.opencontainers.image.revision"="e30650ffa713c9e2e5baef0e90748971ab493ca5"


COPY assembly/ /

RUN unzip riot-4.2.0.zip && \
    rm riot-4.2.0.zip && \
    chmod +x riot-4.2.0/bin/riot


ENV PATH="${PATH}:/riot-4.2.0/bin"

ENTRYPOINT ["/riot-4.2.0/bin/riot"]
