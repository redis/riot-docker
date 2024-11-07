# Generated with JReleaser 1.15.0 at 2024-11-07T07:09:33.626195012Z
FROM azul/zulu-openjdk-alpine:21-jre

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="4.1.7-SNAPSHOT"
LABEL "org.opencontainers.image.revision"="54546eed4b0f8603b64f6231863a4e3990228c26"


COPY assembly/ /

RUN unzip riot-early-access.zip && \
    rm riot-early-access.zip && \
    chmod +x riot-4.1.7-SNAPSHOT/bin/riot


ENV PATH="${PATH}:/riot-4.1.7-SNAPSHOT/bin"

ENTRYPOINT ["/riot-4.1.7-SNAPSHOT/bin/riot"]
