# Update repos
apt_update

# Base directories
directory "#{node['directory']['repos']}/.config" do
  group node.default['directory']['user']
  owner node.default['directory']['user']
  mode 755
end

directory "#{node['directory']['repos']}/.local/bin" do
  group node.default['directory']['user']
  owner node.default['directory']['user']
  mode 755
end

# Create base directories
node.default['directory']['applications'].each do |app|
  directory "#{node.default['directory']['repos']}/.config/#{app}" do
    action :create
    not_if { ::Dir.exist?("#{node.default['directory']['repos']}/.config/#{app}") }
  end
end

# # Installs base packages
# node.default['packages'].each do |app|
#   package app
# end

directory "#{node['directory']['repos']}/git" do
  group node.default['directory']['user']
  owner node.default['directory']['user']
  mode 755
  not_if { ::Dir.exist?("#{node.default['directory']['repos']}/git") }
end

node.default['repos'].each do |repo|
  git "/home/#{node.default['directory']['user']}/git/#{repo}" do
    repository "https://git.mvaldes.dev/mvaldes/#{repo}.git"
    action :checkout
  end
end
