require 'simplecov'
SimpleCov.start

require "bundler/setup"
require "webmock/rspec"
require "sinatra"
require "deliveright"

Dir[File.dirname(__FILE__) + "/support/**/*.rb"].each {|f| require f }

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end

  # Route all external requests to the bread API to the fake one
  config.before(:each) do
    stub_request(:any, /deliveright.com/).to_rack(Deliveleft)
  end
end
