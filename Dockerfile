# Generated with JReleaser 1.12.0 at 2024-06-26T14:22:30.636824109Z
FROM azul/zulu-openjdk-alpine:21-jre

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="4.0.4"
LABEL "org.opencontainers.image.revision"="78f655c8a35cb9ec57a4cd4ebe4ddb0b17a31476"


COPY assembly/ /

RUN unzip riot-4.0.4.zip && \
    rm riot-4.0.4.zip && \
    chmod +x riot-4.0.4/bin/riot


ENV PATH="${PATH}:/riot-4.0.4/bin"

ENTRYPOINT ["/riot-4.0.4/bin/riot"]
