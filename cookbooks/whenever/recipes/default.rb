#
# Cookbook Name:: whenever
# Recipe:: default
#

ey_cloud_report "whenever" do
  message "starting whenever recipe"
end

# Set your application name here
appname = "gcr2"

if ['app_master', 'util', 'solo'].include?(node[:instance_role])

  local_user = node[:users].first
  execute "whenever" do
    cwd "/data/#{appname}/current"
    user local_user[:username]
    command "bundle exec whenever --update-crontab '#{appname}_#{node[:environment][:framework_env]}'"
    action :run 
  end
  
  ey_cloud_report "whenever" do
    message "whenever recipe complete"
  end
end