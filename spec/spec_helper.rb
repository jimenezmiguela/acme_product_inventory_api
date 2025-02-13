# spec/spec_helper.rb
require 'factory_bot_rails'

RSpec.configure do |config|
  config.include FactoryBot::Syntax::Methods

  # For older versions, use this instead of filter_rails_from_backtrace!
  config.filter_gems_from_backtrace("rails")

  # Other configurations
  config.order = :random
end
