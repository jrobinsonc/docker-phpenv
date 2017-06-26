FROM ubuntu:trusty

LABEL maintainer "hi@joserobinson.com"

RUN export DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y curl git libreadline-dev libmcrypt-dev && \
    apt-get build-dep -y php5-cli

RUN git clone git://github.com/phpenv/phpenv.git $HOME/.phpenv && \
    echo 'export PATH="$HOME/.phpenv/bin:$PATH"' >> ~/.bash_profile && \
    echo 'eval "$(phpenv init -)"' >> ~/.bash_profile && \
    cd $HOME/.phpenv && \
    git reset --hard origin/master && \
    source ~/.bash_profile && \
    phpenv rehash
