FROM williamoony/java8:202
LABEL maintainer="williamoony@gmail.com"
WORKDIR /
ADD ./sentinel-dashboard-1.8.0.jar app.jar
RUN mkdir -p /logs/csp
ENV JAVA_OPTS=""
EXPOSE 8080
ENTRYPOINT java $JAVA_OPTS -Dcsp.sentinel.log.dir=/logs/csp -Dfile.encoding=UTF-8 -Djava.security.egd=file:/dev/./urandom -Djava.library.path=/usr/local/apr/lib -jar /app.jar