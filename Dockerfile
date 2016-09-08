FROM ruby:2.2.5
WORKDIR /app
ADD Gemfile /app/Gemfile
ADD Gemfile.lock /app/Gemfile.lock
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
ADD . /app
