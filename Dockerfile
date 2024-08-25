# Generated with JReleaser 1.13.1 at 2024-08-25T23:45:41.873587505Z
FROM azul/zulu-openjdk-alpine:21-jre

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="4.1.2"
LABEL "org.opencontainers.image.revision"="ea6fefff47f8a51fccad3d2bcd045ab2830cc2ec"


COPY assembly/ /

RUN unzip riot-4.1.2.zip && \
    rm riot-4.1.2.zip && \
    chmod +x riot-4.1.2/bin/riot


ENV PATH="${PATH}:/riot-4.1.2/bin"

ENTRYPOINT ["/riot-4.1.2/bin/riot"]
