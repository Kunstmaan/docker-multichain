FROM kunstmaan/multichain:base
MAINTAINER Roderik van der Veer

RUN multichain-util create dockerchain
ADD ./params.dat /root/.multichain/dockerchain/params.dat
ADD ./multichain.conf /root/.multichain/dockerchain/multichain.conf

EXPOSE 9571
EXPOSE 9570

CMD ["multichaind", "dockerchain"]
