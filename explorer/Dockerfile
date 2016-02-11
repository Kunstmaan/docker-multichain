FROM kunstmaan/node-multichain
MAINTAINER Roderik van der Veer

RUN apt-get update \
        && apt-get install -q -y python python-dev python-pip \
        && pip install pycrypto \
        && apt-get clean \
        && rm -rf /var/lib/apt/lists/*

RUN cd /root \
    && wget https://github.com/MultiChain/multichain-explorer/archive/master.tar.gz \
    && tar -xvzf master.tar.gz \
    && rm -Rf master.tar.gz

ADD ./explorer.conf /root/explorer.conf

RUN cd /root/multichain-explorer-master \
    && python setup.py install \
    && rm -Rf /usr/local/lib/python2.7/dist-packages/Abe/htdocs \
    && ln -sf /root/multichain-explorer-master/Abe/htdocs /usr/local/lib/python2.7/dist-packages/Abe/htdocs

ADD ./runservices.sh /root/runservices.sh

EXPOSE 2750

CMD ["/bin/bash", "-x", "/root/runservices.sh"]
