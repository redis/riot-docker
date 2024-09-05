# Generated with JReleaser 1.14.0 at 2024-09-05T00:25:40.078675069Z
FROM azul/zulu-openjdk-alpine:21-jre

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="4.1.3-SNAPSHOT"
LABEL "org.opencontainers.image.revision"="2e743bb6bf1da21cb48c36eb7c58b558afd1108c"


COPY assembly/ /

RUN unzip riot-early-access.zip && \
    rm riot-early-access.zip && \
    chmod +x riot-4.1.3-SNAPSHOT/bin/riot


ENV PATH="${PATH}:/riot-4.1.3-SNAPSHOT/bin"

ENTRYPOINT ["/riot-4.1.3-SNAPSHOT/bin/riot"]
