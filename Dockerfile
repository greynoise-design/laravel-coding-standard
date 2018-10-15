FROM composer:latest

ENV COMPOSER_HOME=/usr/local/composer

RUN composer global require squizlabs/php_codesniffer greynoise-design/laravel-coding-standard && \
    echo '#!/usr/bin/env sh' > /usr/local/bin/phpcs-laravel && \
    echo 'phpcs $@ --standard=/usr/local/composer/vendor/greynoise-design/laravel-coding-standard/GreynoiseLaravel/ruleset.xml' >> /usr/local/bin/phpcs-laravel && \
    echo '#!/usr/bin/env sh' > /usr/local/bin/phpcbf-laravel && \
    echo 'phpcbf $@ --standard=/usr/local/composer/vendor/greynoise-design/laravel-coding-standard/GreynoiseLaravel/ruleset.xml' >> /usr/local/bin/phpcbf-laravel && \
    chmod 777 /usr/local/bin/phpcs-laravel /usr/local/bin/phpcbf-laravel && \
    ln -s /usr/local/composer/vendor/bin/phpcs /usr/local/bin/phpcs && \
    ln -s /usr/local/composer/vendor/bin/phpcbf /usr/local/bin/phpcbf
