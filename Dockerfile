# Generated with JReleaser 1.14.0 at 2024-09-15T20:04:08.467809775Z
FROM azul/zulu-openjdk-alpine:21-jre

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="4.1.3"
LABEL "org.opencontainers.image.revision"="d206da232b81a0187cc5a85a28ba79b3cc91557f"


COPY assembly/ /

RUN unzip riot-4.1.3.zip && \
    rm riot-4.1.3.zip && \
    chmod +x riot-4.1.3/bin/riot


ENV PATH="${PATH}:/riot-4.1.3/bin"

ENTRYPOINT ["/riot-4.1.3/bin/riot"]
