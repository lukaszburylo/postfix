FROM lukaszburylo/base
MAINTAINER Lukasz Burylo <lukasz@burylo.com>

# Update
RUN apt-get update

# Start editing
# Install package here for cache
RUN apt-get -y install supervisor postfix sasl2-bin opendkim opendkim-tools rsyslog

# Clean
RUN apt-get autoremove
RUN apt-get clean

# Add files
ADD assets/install.sh /opt/install.sh

# Run
CMD /opt/install.sh;/usr/bin/supervisord -c /etc/supervisor/supervisord.conf
