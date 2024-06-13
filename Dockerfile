# Generated with JReleaser 1.12.0 at 2024-06-13T03:56:06.292714264Z
FROM azul/zulu-openjdk-alpine:21-jre

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="4.0.1"
LABEL "org.opencontainers.image.revision"="de4a4baad96c186b6d320b8998696bc2ad8ee231"


COPY assembly/ /

RUN unzip riot-4.0.1.zip && \
    rm riot-4.0.1.zip && \
    chmod +x riot-4.0.1/bin/riot


ENV PATH="${PATH}:/riot-4.0.1/bin"

ENTRYPOINT ["/riot-4.0.1/bin/riot"]
