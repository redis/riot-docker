# Generated with JReleaser 1.12.0 at 2024-06-17T19:54:27.250882901Z
FROM azul/zulu-openjdk-alpine:21-jre

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="4.0.3-SNAPSHOT"
LABEL "org.opencontainers.image.revision"="dace70e6612c0964a627a487bcfea76195a9ae33"


COPY assembly/ /

RUN unzip riot-early-access.zip && \
    rm riot-early-access.zip && \
    chmod +x riot-4.0.3-SNAPSHOT/bin/riot


ENV PATH="${PATH}:/riot-4.0.3-SNAPSHOT/bin"

ENTRYPOINT ["/riot-4.0.3-SNAPSHOT/bin/riot"]
