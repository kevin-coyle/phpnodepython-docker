FROM php:7.2.4-cli-stretch
COPY --from=composer:1.5 /usr/bin/composer /usr/bin/composer
RUN apt-get update && apt-get install -my wget gnupg
RUN curl -sL https://deb.nodesource.com/setup_7.x | bash -
RUN apt-get install -y nodejs
