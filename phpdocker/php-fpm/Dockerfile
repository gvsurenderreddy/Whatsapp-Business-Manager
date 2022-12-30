FROM phpdockerio/php:8.0-fpm
WORKDIR "/application"

RUN apt-get update; \
    apt-get -y --no-install-recommends install \
        php8.0-bz2 \ 
        php8.0-http \ 
        php8.0-memcached \ 
        php8.0-mysql \ 
        php8.0-oauth \ 
        php8.0-psr \ 
        php8.0-redis \ 
        php8.0-yaml; \
    apt-get clean; \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*
