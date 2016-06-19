FROM php:7.0.7

RUN apt-get update && apt-get install -y \
  wget

# Install composer - default location and latest version
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
  php -r "if (hash_file('SHA384', 'composer-setup.php') === '070854512ef404f16bac87071a6db9fd9721da1684cd4589b1196c3faf71b9a2682e2311b36a5079825e155ac7ce150d') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;" \
  php composer-setup.php \
  php -r "unlink('composer-setup.php');"

# Install Heroku CLI tool
RUN wget -O- https://toolbelt.heroku.com/install.sh | sh
