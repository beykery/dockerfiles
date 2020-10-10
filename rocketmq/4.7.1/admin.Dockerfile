FROM williamoony/java8:202
LABEL maintainer="williamoony@gmail.com"
WORKDIR /
ADD raw /
ENTRYPOINT exec sh /bin/mqadmin