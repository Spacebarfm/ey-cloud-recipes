node[:applications].each do |app_name, data|
  template "/data/#{app_name}/shared/config/application.yml" do
    source "application.yml.erb"
    owner node[:owner_name]
    group node[:owner_name]
    mode 0655
    backup 0
  end
end