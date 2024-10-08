# Generated with JReleaser 1.14.0 at 2024-10-08T04:29:58.792348641Z
FROM azul/zulu-openjdk-alpine:21-jre

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="4.1.4-SNAPSHOT"
LABEL "org.opencontainers.image.revision"="be822934499560cf32075ef97472dd8f23ebb924"


COPY assembly/ /

RUN unzip riot-early-access.zip && \
    rm riot-early-access.zip && \
    chmod +x riot-4.1.4-SNAPSHOT/bin/riot


ENV PATH="${PATH}:/riot-4.1.4-SNAPSHOT/bin"

ENTRYPOINT ["/riot-4.1.4-SNAPSHOT/bin/riot"]
