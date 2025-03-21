# Generated with JReleaser 1.17.0 at 2025-03-21T16:49:12.916570449Z
FROM azul/zulu-openjdk-alpine:21-jre

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="4.2.4"
LABEL "org.opencontainers.image.revision"="f4be915156dab6521c13ccbe3efaf51dc243a7fc"


COPY assembly/ /

RUN unzip riot-4.2.4.zip && \
    rm riot-4.2.4.zip && \
    chmod +x riot-4.2.4/bin/riot


ENV PATH="${PATH}:/riot-4.2.4/bin"

ENTRYPOINT ["/riot-4.2.4/bin/riot"]
