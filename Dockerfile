# Generated with JReleaser 1.16.0 at 2025-01-29T02:01:24.252931461Z
FROM azul/zulu-openjdk-alpine:21-jre

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="4.2.1"
LABEL "org.opencontainers.image.revision"="67bbe862f9c36740a10303f0e5001a3f77ccbeed"


COPY assembly/ /

RUN unzip riot-4.2.1.zip && \
    rm riot-4.2.1.zip && \
    chmod +x riot-4.2.1/bin/riot


ENV PATH="${PATH}:/riot-4.2.1/bin"

ENTRYPOINT ["/riot-4.2.1/bin/riot"]
