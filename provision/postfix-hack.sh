#!/bin/sh -e
cp -a /etc/services /var/spool/postfix/etc
cp -a /etc/resolv.conf /var/spool/postfix/etc

sed -i -e "s/^relayhost = .*\$/relayhost = ${RELAY_HOST}/" /etc/postfix/main.cf
sed -i -e "s/^myhostname = .*\$/myhostname = ostrovok.ru/" /etc/postfix/main.cf
