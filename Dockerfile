# Generated with JReleaser 1.8.0-SNAPSHOT at 2023-07-05T23:49:08.84095428Z
FROM azul/zulu-openjdk-alpine:17-jre

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis-developer/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="3.1.2"
LABEL "org.opencontainers.image.revision"="6439bffb4e6299948b5858a63cfed37f89c27491"


COPY assembly/ /

RUN unzip riot-3.1.2.zip && \
    rm riot-3.1.2.zip && \
    chmod +x riot-3.1.2/bin/riot


ENV PATH="${PATH}:/riot-3.1.2/bin"

ENTRYPOINT ["/riot-3.1.2/bin/riot"]
