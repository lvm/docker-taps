FROM debian:sid

MAINTAINER Mauro <mauro@sdf.org>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update \
    && apt-get install -yq ruby \
    libpq-dev libmysqlclient-dev libsqlite3-dev \
    git ca-certificates ruby-dev build-essential gcc \
    && rm -rf /var/lib/apt/lists \
    && gem install tapsicle \
    && gem install mysql \
    && gem install pg

ENTRYPOINT ["taps"]
