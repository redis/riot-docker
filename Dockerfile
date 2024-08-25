# Generated with JReleaser 1.13.1 at 2024-08-25T18:21:47.141579811Z
FROM azul/zulu-openjdk-alpine:21-jre

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="4.1.1"
LABEL "org.opencontainers.image.revision"="3cc59a6492729ad48763b41816d4d18fc7afee73"


COPY assembly/ /

RUN unzip riot-4.1.1.zip && \
    rm riot-4.1.1.zip && \
    chmod +x riot-4.1.1/bin/riot


ENV PATH="${PATH}:/riot-4.1.1/bin"

ENTRYPOINT ["/riot-4.1.1/bin/riot"]
