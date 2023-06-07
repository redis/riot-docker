# Generated with JReleaser 1.7.0-SNAPSHOT at 2023-06-07T16:57:04.670996308Z
FROM azul/zulu-openjdk-alpine:20

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis-developer/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="3.0.3"
LABEL "org.opencontainers.image.revision"="92236010a6e76e4b334c82fda889d380bf65b88e"


COPY assembly/ /

RUN unzip riot-3.0.3.zip && \
    rm riot-3.0.3.zip && \
    chmod +x riot-3.0.3/bin/riot


ENV PATH="${PATH}:/riot-3.0.3/bin"

ENTRYPOINT ["/riot-3.0.3/bin/riot"]
