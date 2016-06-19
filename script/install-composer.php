#!/usr/bin/env php

<?php
define('SHA_KEY', '070854512ef404f16bac87071a6db9fd9721da1684cd4589b1196c3faf71b9a2682e2311b36a5079825e155ac7ce150d');

// Get the official latest installer
copy('https://getcomposer.org/installer', 'composer-setup.php');

// Quick file integrity check
if (hash_file('SHA384', 'composer-setup.php') === SHA_KEY) {
  echo 'Installer verified';
} else {
  echo 'Installer corrupt';
  unlink('composer-setup.php');
}
echo PHP_EOL;

# Run the official installer
passthru("php composer-setup.php");
unlink('composer-setup.php');
