FROM alpine:3.11.3
LABEL maintainer="williamoony@gmail.com"

ENV LANG=en_US.UTF-8 \
    LANGUAGE=en_US:en \
    LC_ALL=en_US.UTF-8 \
    GLIBC_BASE_URL=https://github.com/sgerrand/alpine-pkg-glibc/releases/download \
    GLIBC_PACKAGE_VERSION=2.30-r0 \
    USER_HOME_DIR="/root"

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories

RUN apk update \
    && apk add --no-cache ca-certificates bash git openssh zip sshpass curl tzdata \
    && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo "Asia/Shanghai" > /etc/timezone \
    && apk del tzdata \
    && rm -rf /var/cache/apk/*


#====================
# glibc https://github.com/sgerrand/alpine-pkg-glibc
#====================

RUN apk add --no-cache --virtual=build-dependencies wget \
    && ALPINE_GLIBC_BASE_URL="${GLIBC_BASE_URL}/${GLIBC_PACKAGE_VERSION}" \
    && ALPINE_GLIBC_BASE_PACKAGE_FILENAME="glibc-${GLIBC_PACKAGE_VERSION}.apk" \
    && ALPINE_GLIBC_BIN_PACKAGE_FILENAME="glibc-bin-${GLIBC_PACKAGE_VERSION}.apk" \
    && ALPINE_GLIBC_I18N_PACKAGE_FILENAME="glibc-i18n-${GLIBC_PACKAGE_VERSION}.apk" \
    && cd /tmp \
    && wget -q -O "/etc/apk/keys/sgerrand.rsa.pub" "https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub" \
    && wget "${ALPINE_GLIBC_BASE_URL}/${ALPINE_GLIBC_BASE_PACKAGE_FILENAME}" \
        "${ALPINE_GLIBC_BASE_URL}/${ALPINE_GLIBC_BIN_PACKAGE_FILENAME}" \
        "${ALPINE_GLIBC_BASE_URL}/${ALPINE_GLIBC_I18N_PACKAGE_FILENAME}" \
    && apk add --no-cache \
        "${ALPINE_GLIBC_BASE_PACKAGE_FILENAME}" \
        "${ALPINE_GLIBC_BIN_PACKAGE_FILENAME}" \
        "${ALPINE_GLIBC_I18N_PACKAGE_FILENAME}" \
    && /usr/glibc-compat/bin/localedef -i en_US -f UTF-8 en_US.UTF-8 \
    && apk del build-dependencies \
    && rm -rf /etc/apk/keys/sgerrand.rsa.pub \
    && rm -rf /tmp/*