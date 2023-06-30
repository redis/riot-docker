# Generated with JReleaser 1.8.0-SNAPSHOT at 2023-06-30T22:20:55.836335404Z
FROM azul/zulu-openjdk-alpine:20

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis-developer/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="3.0.5-SNAPSHOT"
LABEL "org.opencontainers.image.revision"="87a82c18affdbdf0772edc302dcf71398c10edc6"


COPY assembly/ /

RUN unzip riot-early-access.zip && \
    rm riot-early-access.zip && \
    chmod +x riot-3.0.5-SNAPSHOT/bin/riot


ENV PATH="${PATH}:/riot-3.0.5-SNAPSHOT/bin"

ENTRYPOINT ["/riot-3.0.5-SNAPSHOT/bin/riot"]
