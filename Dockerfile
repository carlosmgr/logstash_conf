FROM docker.elastic.co/logstash/logstash:8.12.2
RUN rm -f /usr/share/logstash/pipeline/logstash.conf
ADD logstash.yml /usr/share/logstash/config/logstash.yml
VOLUME /usr/share/logstash/pipeline/
ENTRYPOINT ["/start.sh"]
