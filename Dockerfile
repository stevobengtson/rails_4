FROM ruby:2.3.1

ENV APP_HOME /app
ENV BUNDLE_PATH /bundle

RUN apt-get update -qq && apt-get install -y apt-utils build-essential libpq-dev nodejs
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN mkdir /$APP_HOME
WORKDIR /$APP_HOME
