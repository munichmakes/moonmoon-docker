FROM php:7.0-apache
WORKDIR /var/www/html
COPY src/ /var/www/html/
RUN apt-get update && \
	apt-get install -y zlib1g-dev && \
	apt-get clean && \
	docker-php-ext-install zip && \
	curl -O https://getcomposer.org/composer.phar && \
	php composer.phar install

RUN mv custom custom_orig && \
	cp -rp custom_orig /data && \
	ls /data && \
	ln -s /data custom && \
	touch /data/pwd.inc.php && \
	ln -s /data/pwd.inc.php admin/inc/pwd.inc.php && \
	chown www-data:www-data /data /data/pwd.inc.php

VOLUME /data

COPY docker-run.sh /usr/local/bin/

CMD "docker-run.sh"
