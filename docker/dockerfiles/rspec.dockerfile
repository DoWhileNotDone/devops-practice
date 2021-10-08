FROM ruby:2-alpine

LABEL maintainer="davegthemighty@hotmail.com"

RUN apk add build-base ruby-nokogiri

RUN gem install rspec capybara selenium-webdriver

ENTRYPOINT [ "rspec" ]