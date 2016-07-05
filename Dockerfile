FROM ruby:2.2.5

ENV LANG C.UTF-8

RUN gem install jekyll

COPY scripts/init.sh /usr/local/bin/

EXPOSE 4000

WORKDIR /tmp/jekyll

CMD /usr/local/bin/init.sh

