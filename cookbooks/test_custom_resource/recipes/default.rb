#
# Cookbook:: test_custom_resource
# Recipe:: default
#
# Copyright:: 2021, The Authors, All Rights Reserved.


test_custom_resource_pkg "apache"


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


