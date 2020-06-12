FROM arm64v8/alpine:3.12.0
LABEL maintainer="williamoony@gmail.com"

ENV JAVA_VERSION_MAJOR 8
ENV JAVA_VERSION_MINOR 212
ENV JAVA_VERSION_BUILD 10

ENV JDK_FOLDER=jdk1.$JAVA_VERSION_MAJOR.0_$JAVA_VERSION_MINOR

ENV JAVA_HOME=/opt/java
ENV JRE_SECURITY_FOLDER=$JAVA_HOME/jre/lib/security
ENV PATH ${JAVA_HOME}/bin:${PATH}

WORKDIR /tmp

# jdk
RUN apk update \
    	&& apk add --no-cache wget curl tar gzip zip\
        && mkdir -p /opt \
	&& wget --no-check-certificate  \
       https://github.com/frekele/oracle-java/releases/download/${JAVA_VERSION_MAJOR}u${JAVA_VERSION_MINOR}-b${JAVA_VERSION_BUILD}/jdk-${JAVA_VERSION_MAJOR}u${JAVA_VERSION_MINOR}-linux-arm64-vfp-hflt.tar.gz \
    && tar -zvxf jdk-${JAVA_VERSION_MAJOR}u${JAVA_VERSION_MINOR}-linux-arm64-vfp-hflt.tar.gz -C /opt \
    && ln -s /opt/${JDK_FOLDER} /opt/java \
    && rm -f jdk-${JAVA_VERSION_MAJOR}u${JAVA_VERSION_MINOR}-linux-arm64-vfp-hflt.tar.gz

# jce
RUN wget --no-check-certificate \
https://github.com/frekele/oracle-java/releases/download/oracle_jce${JAVA_VERSION_MAJOR}/jce_policy-${JAVA_VERSION_MAJOR}.zip \
    && unzip jce_policy-${JAVA_VERSION_MAJOR}.zip \
    && cp UnlimitedJCEPolicyJDK8/*.jar ${JRE_SECURITY_FOLDER} \
    && rm -f jce_policy-${JAVA_VERSION_MAJOR}.zip \
    && rm -rf UnlimitedJCEPolicyJDK8

WORKDIR /
