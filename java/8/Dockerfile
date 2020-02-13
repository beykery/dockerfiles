FROM williamoony/alpine:3.11.3
LABEL maintainer="williamoony@gmail.com"

ENV JAVA_VERSION=8 \
    JAVA_UPDATE=202 \
    JAVA_UPDATE_SMALL_VERSION=08 \
    JAVA_BASE_URL=https://download.oracle.com/otn-pub/java \
    JAVA_BASE_MIRRORS_URL=https://repo.huaweicloud.com/java \
    JAVA_HOME=/opt/java \
    PATH=$PATH:${JAVA_HOME}/bin

#==============
# jdk https://download.oracle.com/otn-pub/java
#==============

RUN apk add --no-cache --virtual=build-dependencies wget unzip \
    && mkdir -p /opt/java \
    && cd /tmp \
    && wget --no-check-certificate "${JAVA_BASE_MIRRORS_URL}/jdk/${JAVA_VERSION}u${JAVA_UPDATE}-b${JAVA_UPDATE_SMALL_VERSION}/jdk-${JAVA_VERSION}u${JAVA_UPDATE}-linux-x64.tar.gz" \
    && tar -xzf "jdk-${JAVA_VERSION}u${JAVA_UPDATE}-linux-x64.tar.gz" -C "${JAVA_HOME}" --strip-components=1 \
    && ln -s ${JAVA_HOME}/bin/* /usr/bin/ \
    && rm -rf "${JAVA_HOME}/"*src.zip \
    && rm -rf "${JAVA_HOME}/lib/missioncontrol" \
           "${JAVA_HOME}/lib/visualvm" \
           "${JAVA_HOME}/lib/"*javafx* \
           "${JAVA_HOME}/jre/lib/plugin.jar" \
           "${JAVA_HOME}/jre/lib/ext/jfxrt.jar" \
           "${JAVA_HOME}/jre/bin/javaws" \
           "${JAVA_HOME}/jre/lib/javaws.jar" \
           "${JAVA_HOME}/jre/lib/desktop" \
           "${JAVA_HOME}/jre/plugin" \
           "${JAVA_HOME}/jre/lib/"deploy* \
           "${JAVA_HOME}/jre/lib/"*javafx* \
           "${JAVA_HOME}/jre/lib/"*jfx* \
           "${JAVA_HOME}/jre/lib/amd64/libdecora_sse.so" \
           "${JAVA_HOME}/jre/lib/amd64/"libprism_*.so \
           "${JAVA_HOME}/jre/lib/amd64/libfxplugins.so" \
           "${JAVA_HOME}/jre/lib/amd64/libglass.so" \
           "${JAVA_HOME}/jre/lib/amd64/libgstreamer-lite.so" \
           "${JAVA_HOME}/jre/lib/amd64/"libjavafx*.so \
           "${JAVA_HOME}/jre/lib/amd64/"libjfx*.so \
    && rm -rf "${JAVA_HOME}/jre/bin/jjs" \
           "${JAVA_HOME}/jre/bin/keytool" \
           "${JAVA_HOME}/jre/bin/orbd" \
           "${JAVA_HOME}/jre/bin/pack200" \
           "${JAVA_HOME}/jre/bin/policytool" \
           "${JAVA_HOME}/jre/bin/rmid" \
           "${JAVA_HOME}/jre/bin/rmiregistry" \
           "${JAVA_HOME}/jre/bin/servertool" \
           "${JAVA_HOME}/jre/bin/tnameserv" \
           "${JAVA_HOME}/jre/bin/unpack200" \
           "${JAVA_HOME}/jre/lib/jfr.jar" \
           "${JAVA_HOME}/jre/lib/jfr" \
           "${JAVA_HOME}/jre/lib/oblique-fonts" \
    && wget --no-check-certificate -c --header "Cookie: oraclelicense=accept-securebackup-cookie" "${JAVA_BASE_URL}/jce/${JAVA_VERSION}/jce_policy-${JAVA_VERSION}.zip" \
    && unzip -jo -d "${JAVA_HOME}/jre/lib/security" "jce_policy-${JAVA_VERSION}.zip" \
    && rm "${JAVA_HOME}/jre/lib/security/README.txt" \
    && apk del build-dependencies \
    && rm -rf /tmp/*

RUN java -version \
    && javac -version