FROM composer:latest

RUN composer global require squizlabs/php_codesniffer && \
    composer global require greynoise-design/laravel-coding-standard && \
    echo "#!/usr/bin/env sh" > /usr/local/bin/phpcs-laravel && \
    echo 'phpcs $@ --standard=GreynoiseLaravel' >> /usr/local/bin/phpcs-laravel && \
    echo "#!/usr/bin/env sh" > /usr/local/bin/phpcbf-laravel && \
    echo 'phpcbf $@ --standard=GreynoiseLaravel' >> /usr/local/bin/phpcbf-laravel && \
    chmod 777 /usr/local/bin/phpcs-laravel /usr/local/bin/phpcbf-laravel
