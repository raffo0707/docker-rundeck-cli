FROM xataz/alpine:3.7

ARG RUNDECK_CLI_VER=1.0.26

LABEL description="rundeck based on alpine" \
      tags="latest 1.0.26 1.0 1" \
      maintainer="xataz <https://github.com/xataz>" \
      build_ver="201804280600"

ENV RD_URL=http://rundeck:4440 \
    RD_USER=user \
    RD_PASSWORD=U53r \
    UID=991 \
    GID=991

RUN BUILD_DEPS="wget" \
    && apk add -U openjdk8-jre \
                    libressl \
                    ca-certificates \
                    openssh-client \
                    su-exec \
                    tini \
                    ${BUILD_DEPS} \
    && mkdir -p /rundeck/bin \
    && wget https://github.com/rundeck/rundeck-cli/releases/download/v${RUNDECK_CLI_VER}/rundeck-cli-${RUNDECK_CLI_VER}-all.jar -O /rundeck/bin/rundeck-cli.jar \
    && apk del ${BUILD_DEPS} \
    && rm -rf /tmp/* /var/cache/apk/*

EXPOSE 4440
ADD rootfs /
RUN chmod +x /usr/local/bin/startup

ENTRYPOINT ["/usr/local/bin/startup"]
CMD ["java", "-jar", "/rundeck/bin/rundeck-cli.jar"]
