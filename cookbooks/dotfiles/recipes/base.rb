# Update repos
apt_update

# Create user
user node.default['directory']['user'] do
  comment 'User for directory'
  home "/home/#{node.default['directory']['user']}"
  shell '/bin/bash'
  manage_home true
  action :create
end

# Base directories
directory "/home/#{node.default['directory']['user']}/.config" do
  group node.default['directory']['user']
  owner node.default['directory']['user']
  mode 755
end

directory "/home/#{node.default['directory']['user']}/.local/bin" do
  group node.default['directory']['user']
  owner node.default['directory']['user']
  recursive true
  mode 755
end

directory "/home/#{node.default['directory']['user']}/git" do
  group node.default['directory']['user']
  owner node.default['directory']['user']
  mode 755
end
