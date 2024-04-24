# Generated with JReleaser 1.12.0-SNAPSHOT at 2024-04-24T17:11:59.820690357Z
FROM azul/zulu-openjdk-alpine:21-jre

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis-developer/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="3.2.3-SNAPSHOT"
LABEL "org.opencontainers.image.revision"="5535c507e0b507d345dc59cab6660b6313d7ae1f"


COPY assembly/ /

RUN unzip riot-early-access.zip && \
    rm riot-early-access.zip && \
    chmod +x riot-3.2.3-SNAPSHOT/bin/riot


ENV PATH="${PATH}:/riot-3.2.3-SNAPSHOT/bin"

ENTRYPOINT ["/riot-3.2.3-SNAPSHOT/bin/riot"]
