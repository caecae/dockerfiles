FROM node:6.2.2

ENV V_PHANTOMJS 2.1.1
ENV V_PHANTOMJS_NAME phantomjs-${V_PHANTOMJS}-linux-x86_64

RUN apt-get update && apt-get install -y \
  curl \
  php5 \ 
  python

WORKDIR /tmp

RUN curl -LO https://bitbucket.org/ariya/phantomjs/downloads/${V_PHANTOMJS_NAME}.tar.bz2 && \
  tar -xf phantomjs-${V_PHANTOMJS}-linux-x86_64.tar.bz2 && \
  mv ${V_PHANTOMJS_NAME} /usr/local/bin/ && \
  ln -s /usr/local/bin/${V_PHANTOMJS_NAME}/bin/phantomjs /usr/bin/phantomjs

