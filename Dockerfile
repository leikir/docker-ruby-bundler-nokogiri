FROM ruby:2.5.1-slim

MAINTAINER Leikir Web <web@leikir.io>

RUN apt-get update \
  && apt-get install -qq -y --no-install-recommends \
    build-essential \
    libcurl4-openssl-dev

RUN gem install bundler --no-ri --no-rdoc

RUN gem install nokogiri -v 1.8.2 --no-ri --no-rdoc
