# Generated with JReleaser 1.7.0-SNAPSHOT at 2023-06-16T20:44:40.883738013Z
FROM azul/zulu-openjdk-alpine:20

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis-developer/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="3.0.4"
LABEL "org.opencontainers.image.revision"="6e7372f226ff3b812f545d42fa69dd06aca8e358"


COPY assembly/ /

RUN unzip riot-3.0.4.zip && \
    rm riot-3.0.4.zip && \
    chmod +x riot-3.0.4/bin/riot


ENV PATH="${PATH}:/riot-3.0.4/bin"

ENTRYPOINT ["/riot-3.0.4/bin/riot"]
