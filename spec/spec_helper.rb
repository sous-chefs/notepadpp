require 'chefspec'
require 'chefspec/berkshelf'
require 'rspec/expectations'

RSpec.configure do |config|
  config.run_all_when_everything_filtered = true
  config.filter_run :focus
  config.order = 'random'
  config.platform = 'windows'
  config.version = '2012R2'
  ENV['ProgramFiles'] = 'C:\Program Files'
  ENV['WINDIR'] = 'C:\Windows'
end
