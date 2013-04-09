node[:applications].each do |app_name, data|
  unless ['db_master', 'db_slave'].include?(node[:instance_role])
    template "/data/#{app_name}/shared/config/application.yml" do
      source "application.yml.erb"
      owner node[:owner_name]
      group node[:owner_name]
      mode 0655
      backup 0
    end
  end
end