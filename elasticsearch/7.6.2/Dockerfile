FROM elasticsearch:7.6.2
LABEL maintainer="williamoony@gmail.com"
RUN bin/elasticsearch-plugin install analysis-smartcn
ADD elasticsearch-analysis-ik-7.6.2.zip /ik/
RUN bin/elasticsearch-plugin install --batch file:///ik/elasticsearch-analysis-ik-7.6.2.zip
RUN rm -f /ik/elasticsearch-analysis-ik-7.6.2.zip