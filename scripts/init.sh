#!/usr/bin/env bash

# Default location is /tmp/jekyll/
# Checking for _config.yml
if [ -e "_config.yml" ] 
then
  jekyll server -H 0.0.0.0
else
  echo 'Error: Possible wrong execution location ... missing _config.yml.'
fi
