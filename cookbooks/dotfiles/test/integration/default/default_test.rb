# InSpec test for recipe dotfiles::default

# The Chef InSpec reference, with examples and extensive documentation, can be
# found at https://docs.chef.io/inspec/resources/

describe user('mvaldes') do
  it { should exist }
end
