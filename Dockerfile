FROM lukaszburylo/base
MAINTAINER Lukasz Burylo <lukasz@burylo.com>

# Update
RUN apt-get update

# Start editing
# Install package here for cache
RUN apt-get -y install supervisor postfix sasl2-bin opendkim opendkim-tools

# Clean
RUN apt-get autoremove
RUN apt-get clean
