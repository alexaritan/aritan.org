FROM richarvey/nginx-php-fpm

RUN mkdir -p /var/log/nginx/ && touch /var/log/nginx/access.log && touch /var/log/nginx/error.log

ADD ./nginx.conf /etc/nginx/conf.d/default.conf
ADD ./nginx-site-available.conf /etc/nginx/sites-available/default.conf
ADD ./nginx-site-available-ssl.conf /etc/nginx/sites-available/default-ssl.conf
ADD ./src /var/www
