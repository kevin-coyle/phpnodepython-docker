FROM ubuntu
RUN apt-get update && apt-get install php-cli -y
COPY --from=composer:1.5 /usr/bin/composer /usr/bin/composer
RUN curl -sL https://deb.nodesource.com/setup_7.x | bash -
RUN apt-get install -y nodejs
