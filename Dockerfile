# Generated with JReleaser 1.11.0 at 2024-03-18T22:40:17.78948266Z
FROM azul/zulu-openjdk-alpine:21-jre

LABEL "org.opencontainers.image.title"="riot"
LABEL "org.opencontainers.image.description"="Get data in and out of Redis with RIOT"
LABEL "org.opencontainers.image.url"="https://github.com/redis-developer/riot"
LABEL "org.opencontainers.image.licenses"="Apache-2.0"
LABEL "org.opencontainers.image.version"="3.2.0"
LABEL "org.opencontainers.image.revision"="87ebbd9fa51afc8dddc19be9382752904d13b60c"


COPY assembly/ /

RUN unzip riot-3.2.0.zip && \
    rm riot-3.2.0.zip && \
    chmod +x riot-3.2.0/bin/riot


ENV PATH="${PATH}:/riot-3.2.0/bin"

ENTRYPOINT ["/riot-3.2.0/bin/riot"]
