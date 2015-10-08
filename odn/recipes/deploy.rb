node[:deploy].each do |application, deploy|

  current_dir = ::File.join(deploy[:deploy_to], 'current')

  Chef::Log.info("******Changing permissions******")
  Chef::Log.info(current_dir)

  execute "chmod -R 777 admin/application/cache/" do
    user "root"
    cwd current_dir
    ignore_failure true
  end

  execute "chmod -R 777 admin/application/logs/" do
    user "root"
    cwd current_dir
    ignore_failure true
  end

  execute "chmod -R 777 kohana/application/cache/" do
    user "root"
    cwd current_dir
    ignore_failure true
  end

  execute "chmod -R 777 kohana/application/logs/" do
    user "root"
    cwd current_dir
    ignore_failure true
  end

end