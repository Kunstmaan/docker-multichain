FROM kunstmaan/base-multichain
MAINTAINER Kunstmaan

RUN apt-get update \
        && apt-get install -q -y git apache2 php \
        && service apache2 start \
        && apt-get install -y php-bcmath php-bz2 php-intl php-gd php-mbstring php-mcrypt php-zip php-curl \
        && apt-get install -y libapache2-mod-php \
        && cd /var/www/html && git clone https://github.com/MultiChain/multichain-web-demo.git

COPY ./runchain.sh /root/runchain.sh
COPY ./blocknotify.sh /root/blocknotify.sh
RUN chmod a+x /root/runchain.sh
RUN chmod a+x /root/blocknotify.sh

CMD ["/bin/bash", "/root/runchain.sh"]
