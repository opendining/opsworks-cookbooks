packages = [
    "php55-common",
    "php-process",
    "php-xsl",
    "php-curl",
    "php-xmlrpc",
    "php-devel",
    "php-gd",
    "php-mbstring",
    "php-cli",
    "php-mcrypt",
    "php-xml",
    "php-opcache",
    "php-pear",
    "php-xml-parser"
  ]

normal[:mod_php5_apache2][:packages] = packages
