# Generated with JReleaser 1.15.0 at 2024-11-12T22:58:15.161941433Z
FROM azul/zulu-openjdk-alpine:21-jre

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="4.1.7"
LABEL "org.opencontainers.image.revision"="4b649e298cc8030916af70ad1096f81b61ea2c0e"


COPY assembly/ /

RUN unzip riot-4.1.7.zip && \
    rm riot-4.1.7.zip && \
    chmod +x riot-4.1.7/bin/riot


ENV PATH="${PATH}:/riot-4.1.7/bin"

ENTRYPOINT ["/riot-4.1.7/bin/riot"]
