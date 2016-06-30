FROM node:6.2.2

RUN apt-get update && apt-get install -y \
  curl \
  php5
