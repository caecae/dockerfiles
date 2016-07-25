Rundeck Playground
===================

Quick environment provisioned for using Rundeck

### Usage

* -p <host-ip>:4000
* -v <development-dir>:/tmp/jekyll
* -d ... if want to use the default init.sh and as daemon
* -it --rm ... if want to get terminal access

Sample:
docker run -it --rm -p 80:4000 -v '$PWD':/tmp/jekyll <jekyll> bash

### Notes

Base on the instruction from (Rundeck download)[http://rundeck.org/downloads.html]

### Dependencies

* Ruby 2.2.5
* Gem 2.6.6

### Reference

* (Official Rundeck)[http://rundeck.org/]
* (Jordan Jethwa version Github)[https://github.com/jjethwa/rundeck]
* (Jordan Jethwa version Image)[https://hub.docker.com/r/jordan/rundeck/]
* (Docker Hub image list)[https://hub.docker.com/search/?isAutomated=0&isOfficial=0&page=1&pullCount=0&q=rundeck&starCount=0]
