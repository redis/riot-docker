# Generated with JReleaser 1.13.1 at 2024-08-07T06:48:46.014142928Z
FROM azul/zulu-openjdk-alpine:21-jre

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="4.1.0"
LABEL "org.opencontainers.image.revision"="a47c071e092081e2ba44d79098946c87fe460b25"


COPY assembly/ /

RUN unzip riot-4.1.0.zip && \
    rm riot-4.1.0.zip && \
    chmod +x riot-4.1.0/bin/riot


ENV PATH="${PATH}:/riot-4.1.0/bin"

ENTRYPOINT ["/riot-4.1.0/bin/riot"]
