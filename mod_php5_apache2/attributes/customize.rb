packages = [
    "php55-common",
    "php55-process",
    "php55-xsl",
    "php55-curl",
    "php55-xmlrpc",
    "php55-devel",
    "php55-gd",
    "php55-mbstring",
    "php55-cli",
    "php55-sasl",
    "php55-mcrypt",
    "php55-xml",
    "php55-opcache",
    "php-pear",
    "php-xml-parser"
  ]

normal[:mod_php5_apache2][:packages] = packages
