FROM elasticsearch:7.13.4
LABEL maintainer="williamoony@gmail.com"
RUN bin/elasticsearch-plugin install analysis-smartcn
ADD elasticsearch-analysis-ik-7.13.4.zip /ik/
RUN bin/elasticsearch-plugin install --batch file:///ik/elasticsearch-analysis-ik-7.13.4.zip
RUN rm -f /ik/elasticsearch-analysis-ik-7.13.4.zip