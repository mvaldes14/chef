#
# Cookbook:: test_custom_resource
# Recipe:: default
#
# Copyright:: 2021, The Authors, All Rights Reserved.

pkg_installer "apache2" do
  enable false
  action :install
end

directory '/tmp/test_dir' do
    owner 'root'
    group 'root'
    mode '0755'
    action :create
end

directory '/tmp/another_directory' do
    owner 'root'
    group 'root'
    mode '0755'
    action :create
end


