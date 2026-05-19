FROM ubuntu:24.04

RUN export DEBIAN_FRONTEND=noninteractive \
    && apt update && apt install -y \
    php8.3-cli \
    php8.3-dev \
    php8.3-mbstring \
    php8.3-curl \
    php8.3-intl \
    git \
    zip \
    unzip \
    libicu-dev

COPY --from=composer /usr/bin/composer /usr/bin/composer

RUN mkdir -p /xdebug && git clone https://github.com/xdebug/xdebug.git --recursive --branch 3.5.1 /xdebug
RUN cd /xdebug \
    && phpize \
    && ./configure --enable-xdebug \
    && make \
    && make install \
    && echo 'zend_extension=xdebug' > /etc/php/8.3/cli/conf.d/99-xdebug.ini

RUN php -v

CMD ["sleep", "infinity"]
