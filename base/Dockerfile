FROM ubuntu-debootstrap:14.04
MAINTAINER Roderik van der Veer

RUN apt-get update \
        && apt-get install -y wget \
        && apt-get clean \
        && rm -rf /var/lib/apt/lists/* \
        && cd /tmp \
        && wget http://www.multichain.com/download/multichain-1.0-alpha-13.tar.gz \
        && tar -xvzf multichain-1.0-alpha-13.tar.gz \
        && cd multichain-1.0-alpha-13 \
        && mv multichaind multichain-cli multichain-util /usr/local/bin \
        && cd /tmp \
        && rm -Rf multichain*

CMD ["/bin/bash"]
