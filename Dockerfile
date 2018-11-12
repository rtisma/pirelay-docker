FROM raspbian/stretch

RUN apt update \
    && apt install -y git apache2 php7.0 libapache2-mod-php7.0 make gcc

RUN git clone git://git.drogon.net/wiringPi \
    && cd wiringPi \
    && git pull origin \
    && ./build

COPY ./scripts/gpio.php /var/www/html/gpio.php
COPY ./scripts/start-apache.sh /
RUN chmod 755 /start-apache.sh
RUN systemctl enable apache2
CMD /start-apache.sh

