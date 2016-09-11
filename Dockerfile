FROM ruby:2.2.5
WORKDIR /app
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs \
 && gem install bundler --no-ri --no-rdoc
ENV BUNDLE_PATH /bundles
ADD . /app
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
EXPOSE 3000
