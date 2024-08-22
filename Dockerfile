# Generated with JReleaser 1.13.1 at 2024-08-22T16:09:17.234966775Z
FROM azul/zulu-openjdk-alpine:21-jre

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="4.1.1-SNAPSHOT"
LABEL "org.opencontainers.image.revision"="1726f5415d6f4a2fb3b38e10b12ce7c5e15d6a90"


COPY assembly/ /

RUN unzip riot-early-access.zip && \
    rm riot-early-access.zip && \
    chmod +x riot-4.1.1-SNAPSHOT/bin/riot


ENV PATH="${PATH}:/riot-4.1.1-SNAPSHOT/bin"

ENTRYPOINT ["/riot-4.1.1-SNAPSHOT/bin/riot"]
