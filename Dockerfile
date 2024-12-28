FROM ruby:3.4.1

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev

WORKDIR /func-rb

COPY Gemfile /Gemfile
COPY Gemfile.lock /Gemfile.lock

RUN gem install bundler && bundle install

COPY . .

