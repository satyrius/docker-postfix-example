FROM phusion/baseimage:0.9.16
CMD ["/sbin/my_init"]

RUN export DEBIAN_FRONTEND=noninteractive \
    && apt-get update -qq && apt-get upgrade -qq \
    && apt-get install -qq postfix \
    && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY provision/postfix-run.sh /etc/service/postfix/run
RUN chmod +x /etc/service/postfix/run

COPY provision/postfix-hack.sh /etc/my_init.d/01_postfix_hach.sh
RUN chmod +x /etc/my_init.d/*.sh
