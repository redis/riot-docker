# Generated with JReleaser 1.13.1 at 2024-08-25T20:48:47.606009955Z
FROM azul/zulu-openjdk-alpine:21-jre

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="4.1.2-SNAPSHOT"
LABEL "org.opencontainers.image.revision"="933881c296e22b57ed9e27ed31e86d2aeb0f19e3"


COPY assembly/ /

RUN unzip riot-early-access.zip && \
    rm riot-early-access.zip && \
    chmod +x riot-4.1.2-SNAPSHOT/bin/riot


ENV PATH="${PATH}:/riot-4.1.2-SNAPSHOT/bin"

ENTRYPOINT ["/riot-4.1.2-SNAPSHOT/bin/riot"]
