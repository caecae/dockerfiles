FROM php:7.0.7

RUN apt-get update && apt-get install -y \
  git \
  sudo \
  ruby-full \
  wget

WORKDIR /tmp
COPY script/install-composer.php install-composer.php
# Install composer - default location and latest version
RUN php install-composer.php

### Specail SUDO required install block
### export SUDO_FORCE_REMOVE=yes; apt-get remove -y sudo
# Install Heroku CLI tool
RUN wget -O- https://toolbelt.heroku.com/install.sh | sh
