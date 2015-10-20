Chef::Log.info("******Installing MongoClient******")

execute "no | pecl install mongo" do
  user "root"
  ignore_failure true
end

execute "no | pear install http_request2" do
  user "root"
  ignore_failure true
end

execute "echo 'extension=mongo.so' | sudo tee -a /etc/php5/apache2/conf.d/20-mongo.ini" do
  user "root"
  ignore_failure true
end

execute "php5enmod mcrypt" do
  user "root"
  ignore_failure true
end

execute "echo 'max_input_vars = 5000\nmemory_limit = 256M\nupload_max_filesize = 20M\npost_max_size = 20M\nshort_open_tag = On\n' | sudo tee -a /etc/php5/apache2/conf.d/20-php.ini" do
  user "root"
  ignore_failure true
end

service 'apache2' do
  service_name value_for_platform_family(
    'rhel' => 'httpd',
    'debian' => 'apache2'
  )
  action :restart
end