# Generated with JReleaser 1.12.0-SNAPSHOT at 2024-04-22T21:47:39.315099868Z
FROM azul/zulu-openjdk-alpine:21-jre

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis-developer/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="3.2.2"
LABEL "org.opencontainers.image.revision"="be2b6c6203f4e78ede0fbc6bddff897e214062d1"


COPY assembly/ /

RUN unzip riot-3.2.2.zip && \
    rm riot-3.2.2.zip && \
    chmod +x riot-3.2.2/bin/riot


ENV PATH="${PATH}:/riot-3.2.2/bin"

ENTRYPOINT ["/riot-3.2.2/bin/riot"]
