# See https://docs.chef.io/workstation/config_rb/ for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "miguelv"
client_key               "#{current_dir}/miguelv.pem"
chef_server_url          "https://api.chef.io/organizations/miguel_demo"
cookbook_path            ["~/git/chef/cookbooks"]
validation_key           "#{current_dir}/miguel_demo-validator.pem"
supermarket_site         ""
