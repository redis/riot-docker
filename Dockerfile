# Generated with JReleaser 1.12.0 at 2024-06-12T21:54:46.610930509Z
FROM azul/zulu-openjdk-alpine:21-jre

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="4.0.0"
LABEL "org.opencontainers.image.revision"="213784eabc9f8d1421445ffc15877c9ddd7abc79"


COPY assembly/ /

RUN unzip riot-4.0.0.zip && \
    rm riot-4.0.0.zip && \
    chmod +x riot-4.0.0/bin/riot


ENV PATH="${PATH}:/riot-4.0.0/bin"

ENTRYPOINT ["/riot-4.0.0/bin/riot"]
