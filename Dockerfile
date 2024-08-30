# Generated with JReleaser 1.13.1 at 2024-08-30T23:00:14.803474794Z
FROM azul/zulu-openjdk-alpine:21-jre

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="4.1.3-SNAPSHOT"
LABEL "org.opencontainers.image.revision"="41f18e9d5f28185763f49573739d45145a166307"


COPY assembly/ /

RUN unzip riot-early-access.zip && \
    rm riot-early-access.zip && \
    chmod +x riot-4.1.3-SNAPSHOT/bin/riot


ENV PATH="${PATH}:/riot-4.1.3-SNAPSHOT/bin"

ENTRYPOINT ["/riot-4.1.3-SNAPSHOT/bin/riot"]
