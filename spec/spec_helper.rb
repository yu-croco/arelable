require "bundler/setup"
require "arelable"

Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each{ |f| require f }

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end

  migrations = "#{File.dirname(__FILE__)}/support/migrations"
  config.before(:all) do
    ActiveRecord::MigrationContext.new(migrations).up
  end

  config.after(:all) do
    ActiveRecord::MigrationContext.new(migrations).down
  end
end
