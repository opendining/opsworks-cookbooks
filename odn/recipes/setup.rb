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

service 'apache2' do
  service_name value_for_platform_family(
    'rhel' => 'httpd',
    'debian' => 'apache2'
  )
  action :restart
end