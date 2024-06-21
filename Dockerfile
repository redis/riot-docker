# Generated with JReleaser 1.12.0 at 2024-06-21T22:49:44.568083263Z
FROM azul/zulu-openjdk-alpine:21-jre

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="4.0.3"
LABEL "org.opencontainers.image.revision"="766e86377472e05cf4c7fbe38d06d8d884357a8b"


COPY assembly/ /

RUN unzip riot-4.0.3.zip && \
    rm riot-4.0.3.zip && \
    chmod +x riot-4.0.3/bin/riot


ENV PATH="${PATH}:/riot-4.0.3/bin"

ENTRYPOINT ["/riot-4.0.3/bin/riot"]
