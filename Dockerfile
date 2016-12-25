FROM python:2.7
MAINTAINER Babim <ducanh.babim@yahoo.com>

WORKDIR /opt/netbox

ARG BRANCH=master
ARG URL=https://github.com/digitalocean/netbox.git
RUN git clone --depth 1 $URL -b $BRANCH .  && \
    apt-get update -qq && apt-get install -y libldap2-dev libsasl2-dev libssl-dev graphviz && \
	pip install gunicorn==17.5 && \
	pip install django-auth-ldap && \
    pip install -r requirements.txt

ADD docker-entrypoint.sh /docker-entrypoint.sh
ADD configuration.docker.py /opt/netbox/netbox/netbox/configuration.py

ENTRYPOINT [ "/docker-entrypoint.sh" ]
# Expose ports
EXPOSE 80/tcp

ADD gunicorn_config.py /opt/netbox/
ADD nginx.conf /etc/netbox-nginx/
VOLUME ["/etc/netbox-nginx/"]
