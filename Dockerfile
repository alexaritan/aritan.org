FROM richarvey/nginx-php-fpm

RUN mkdir -p /var/log/nginx/ && touch /var/log/nginx/access.log && touch /var/log/nginx/error.log

ADD ./nginx.conf /etc/nginx/conf.d/default.conf
ADD ./src /var/www