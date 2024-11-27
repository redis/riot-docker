# Generated with JReleaser 1.15.0 at 2024-11-27T21:19:49.271814635Z
FROM azul/zulu-openjdk-alpine:21-jre

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="4.1.9"
LABEL "org.opencontainers.image.revision"="5c605d64cb064a996e690ce0d0e417a8d24c6db4"


COPY assembly/ /

RUN unzip riot-4.1.9.zip && \
    rm riot-4.1.9.zip && \
    chmod +x riot-4.1.9/bin/riot


ENV PATH="${PATH}:/riot-4.1.9/bin"

ENTRYPOINT ["/riot-4.1.9/bin/riot"]
