FROM ruby:3.0-alpine

RUN apk add --update --no-cache binutils-gold build-base \
      curl file g++ gcc git less libstdc++ libffi-dev \
      libc-dev linux-headers libxml2-dev libxslt-dev \
      libgcrypt-dev make netcat-openbsd nodejs openssl \
      pkgconfig postgresql-dev tzdata yarn

RUN gem install rails

RUN bundle install
