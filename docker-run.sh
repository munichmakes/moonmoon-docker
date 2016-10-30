#!/bin/sh
# img/   style/ views/

if [ ! -d "/var/www/html/custom/img" ]; then
	cp -rp /var/www/html/custom_orig/img /var/www/html/custom/
fi
if [ ! -d "/var/www/html/custom/style" ]; then
        cp -rp /var/www/html/custom_orig/style /var/www/html/custom/
fi
if [ ! -d "/var/www/html/custom/views" ]; then
        cp -rp /var/www/html/custom_orig/views /var/www/html/custom/
fi

exec apache2-foreground
