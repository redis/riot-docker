# Generated with JReleaser 1.7.0-SNAPSHOT at 2023-06-02T05:59:45.932074988Z
FROM azul/zulu-openjdk-alpine:8-jre

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis-developer/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="3.0.1"
LABEL "org.opencontainers.image.revision"="a47b1c2ce43fd8b0c56a1bc4f3db71d69b3b5c24"


COPY assembly/ /

RUN unzip riot-3.0.1.zip && \
    rm riot-3.0.1.zip && \
    chmod +x riot-3.0.1/bin/riot


ENV PATH="${PATH}:/riot-3.0.1/bin"

ENTRYPOINT ["/riot-3.0.1/bin/riot"]
