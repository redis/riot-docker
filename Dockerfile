# Generated with JReleaser 1.8.0-SNAPSHOT at 2023-07-14T05:48:58.215271027Z
FROM azul/zulu-openjdk-alpine:17-jre

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis-developer/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="3.1.4"
LABEL "org.opencontainers.image.revision"="5badce85660473504503731b735d9b1aeb8d15f2"


COPY assembly/ /

RUN unzip riot-3.1.4.zip && \
    rm riot-3.1.4.zip && \
    chmod +x riot-3.1.4/bin/riot


ENV PATH="${PATH}:/riot-3.1.4/bin"

ENTRYPOINT ["/riot-3.1.4/bin/riot"]
