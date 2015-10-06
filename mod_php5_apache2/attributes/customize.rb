packages = [
    "php55-common",
    "php55-process",
    "php-xsl",
    "php-curl",
    "php55-xmlrpc",
    "php55-gd",
    "php55-mbstring",
    "php55-cli",
    "php55-mcrypt",
    "php55-xml",
    "php55-opcache",
    "php-pear"
  ]

normal[:mod_php5_apache2][:packages] = packages
