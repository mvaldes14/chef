
resource_name :pkg_installer
provides :pkg_installer
unified_mode true


property :name, String 
default_action :install

action :install do

  apt_update
  
  # check if
  folder_1 =  ::File.exist?('/tmp/test_dir')
  folder_2 =  ::File.exist?('/tmp/another_directory')
  condition = folder_1 && folder_2

  execute 'test-exec' do
    command 'ls -l /tmp/test_dir'
    action :run
    only_if {condition.to_s }
  end

  pkg_name = node['platform_family'] == 'debian' ? 'apache2' : 'httpd'
  apt_package pkg_name do
      action :install
  end

  
  service pkg_name do
    action [:enable, :start]
  end
end