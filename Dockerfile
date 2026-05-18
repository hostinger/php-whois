FROM php:8.3-cli-alpine

RUN apk update && apk add --no-cache \
    git \
    zip \
    unzip \
    icu-dev

COPY --from=composer /usr/bin/composer /usr/bin/composer

WORKDIR /app

ENTRYPOINT []

CMD ["sleep", "infinity"]