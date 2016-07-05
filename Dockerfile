FROM ruby:2.2.5

ENV LANG C.UTF-8

RUN gem install jekyll

EXPOSE 4000

