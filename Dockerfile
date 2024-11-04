# Generated with JReleaser 1.15.0 at 2024-11-04T06:49:10.268229385Z
FROM azul/zulu-openjdk-alpine:21-jre

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="4.1.6"
LABEL "org.opencontainers.image.revision"="165e702fcd04d26975ba82f6546a0a580fb2152d"


COPY assembly/ /

RUN unzip riot-4.1.6.zip && \
    rm riot-4.1.6.zip && \
    chmod +x riot-4.1.6/bin/riot


ENV PATH="${PATH}:/riot-4.1.6/bin"

ENTRYPOINT ["/riot-4.1.6/bin/riot"]
