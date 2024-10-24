# Generated with JReleaser 1.14.0 at 2024-10-24T15:23:12.960395552Z
FROM azul/zulu-openjdk-alpine:21-jre

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="4.1.4"
LABEL "org.opencontainers.image.revision"="107a731050b5fba4a7846bb90fdb2752389fd371"


COPY assembly/ /

RUN unzip riot-4.1.4.zip && \
    rm riot-4.1.4.zip && \
    chmod +x riot-4.1.4/bin/riot


ENV PATH="${PATH}:/riot-4.1.4/bin"

ENTRYPOINT ["/riot-4.1.4/bin/riot"]
