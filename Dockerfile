FROM ansi/mosquitto:latest

MAINTAINER Jacek Gerbszt <jacek.gerbszt@intel.com>

ENV CONF_DIR /etc/mosquitto

ADD scripts /scripts

RUN chmod +x /scripts/*.sh

CMD ["/scripts/run.sh"]
