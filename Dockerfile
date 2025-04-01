# Generated with JReleaser 1.17.0 at 2025-04-01T00:28:44.050010542Z
FROM azul/zulu-openjdk-alpine:21-jre

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="4.3.0"
LABEL "org.opencontainers.image.revision"="e958616d3942f2ff6c001e379ddebadc4d9bf8b2"


COPY assembly/ /

RUN unzip riot-4.3.0.zip && \
    rm riot-4.3.0.zip && \
    chmod +x riot-4.3.0/bin/riot


ENV PATH="${PATH}:/riot-4.3.0/bin"

ENTRYPOINT ["/riot-4.3.0/bin/riot"]
