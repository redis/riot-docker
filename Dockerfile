# Generated with JReleaser 1.17.0 at 2025-03-06T08:11:18.823043849Z
FROM azul/zulu-openjdk-alpine:21-jre

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="4.2.4-SNAPSHOT"
LABEL "org.opencontainers.image.revision"="de6c93003da52d9605ad603d72e3462e9719709b"


COPY assembly/ /

RUN unzip riot-early-access.zip && \
    rm riot-early-access.zip && \
    chmod +x riot-4.2.4-SNAPSHOT/bin/riot


ENV PATH="${PATH}:/riot-4.2.4-SNAPSHOT/bin"

ENTRYPOINT ["/riot-4.2.4-SNAPSHOT/bin/riot"]
