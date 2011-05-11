#
# Cookbook Name:: monit-scripts
# Recipe:: default
#
# The EY monit-scripts package, version 0.19, which contain the rails3 versions
# of the monit scripts.  These use 'script/rails runner' rather than
# script/runner

enable_package "ey-monit-scripts" do
  version "0.19"
end

package "ey-monit-scripts" do
  version "0.19"
  action :install
end
