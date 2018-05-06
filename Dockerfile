FROM ruby:2.3.4
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN gem install bundler
RUN mkdir /finance-tracker
WORKDIR /finance-tracker
COPY Gemfile /finance-tracker/Gemfile
COPY Gemfile.lock /finance-tracker/Gemfile.lock
RUN bundle install
COPY . /finance-tracker