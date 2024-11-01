# Generated with JReleaser 1.15.0 at 2024-11-01T15:57:15.270384388Z
FROM azul/zulu-openjdk-alpine:21-jre

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="4.1.5"
LABEL "org.opencontainers.image.revision"="9cf7763a287f4afbe08cf263727cd3a0b83b1750"


COPY assembly/ /

RUN unzip riot-4.1.5.zip && \
    rm riot-4.1.5.zip && \
    chmod +x riot-4.1.5/bin/riot


ENV PATH="${PATH}:/riot-4.1.5/bin"

ENTRYPOINT ["/riot-4.1.5/bin/riot"]
