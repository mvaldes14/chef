# InSpec test for recipe test_custom_resource::default

# The Chef InSpec reference, with examples and extensive documentation, can be
# found at https://docs.chef.io/inspec/resources/

describe package('apache2') do
  it { should be_installed }
end
