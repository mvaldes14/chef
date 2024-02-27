
provides :pkg_installer
unified_mode true


property :name, String, default: 'nginx'
property :enable, [TrueClass, FalseClass], required: true

action :install do
  apt_update

  apt_package new_resource.name do
      action :install
  end
end
