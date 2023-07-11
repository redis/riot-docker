# Generated with JReleaser 1.8.0-SNAPSHOT at 2023-07-11T08:23:56.551766451Z
FROM azul/zulu-openjdk-alpine:17-jre

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis-developer/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="3.1.3"
LABEL "org.opencontainers.image.revision"="7751209cedf9ccf90cc71eaf0ccbcd3c6dd509ec"


COPY assembly/ /

RUN unzip riot-3.1.3.zip && \
    rm riot-3.1.3.zip && \
    chmod +x riot-3.1.3/bin/riot


ENV PATH="${PATH}:/riot-3.1.3/bin"

ENTRYPOINT ["/riot-3.1.3/bin/riot"]
