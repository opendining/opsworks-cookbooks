packages = []

case node[:platform_family]
when 'debian'
  packages = [
    "php5-xsl",
    "php5-curl",
    "php5-xmlrpc",
    "php5-sqlite",
    "php5-dev",
    "php5-gd",
    "php5-cli",
    "php5-sasl",
    "php5-mcrypt",
    "php5-memcache",
    "php-pear",
    "php-xml-parser",
    "php-mail-mime",
    "php-db",
    "php-mdb2",
    "php-html-common"
  ]
when 'rhel'
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
end

normal[:mod_php5_apache2][:packages] = packages
