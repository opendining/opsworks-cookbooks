#
# Cookbook Name:: deploy
# Recipe:: php
#

include_recipe 'deploy'
# include_recipe "mod_php5_apache2"
# include_recipe "mod_php5_apache2::php"

node[:deploy].each do |application, deploy|
  if deploy[:application_type] != 'php'
    Chef::Log.debug("Skipping deploy::php application #{application} as it is not an PHP app")
    next
  end

  opsworks_deploy_dir do
    user deploy[:user]
    group deploy[:group]
    path deploy[:deploy_to]
  end

  opsworks_deploy do
    deploy_data deploy
    app application
  end
end

# Instead we're reloading Apache
include_recipe "apache2::service"

execute "reload apache" do
  command "echo 'Reloading Apache now'"
  action :run
  notifies :reload, "service[apache2]", :delayed
end
