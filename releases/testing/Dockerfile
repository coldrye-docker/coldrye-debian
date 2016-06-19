FROM debian:testing

MAINTAINER Carsten Klein <trancesilken@gmail.com>

RUN set -x \
    && export APT_LISTCHANGES_FRONTEND=none \
    && apt-get update \
    && apt-get -q -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" dist-upgrade \
    && apt-get -q -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" install apt-utils \
    && apt-get -q -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" install curl gnupg vim \
    && apt-get clean \
    && rm -Rf /var/lib/apt/lists/* 2>/dev/null

