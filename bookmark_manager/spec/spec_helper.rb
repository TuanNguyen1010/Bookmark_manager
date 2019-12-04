ENV['RACK_ENV'] = 'test'
ENV["ENVIRONMENT"] = "test"

require 'capybara'
require 'capybara/rspec'
require 'rspec'
# require './spec/features/web_helpers.rb'
require './app.rb'
require 'pg'
require_relative 'features/db_helper'

Capybara.app = BookmarkManager


RSpec.configure do |config|
  config.before(:each) do
    refresh_db
  end
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end
  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end
  config.shared_context_metadata_behavior = :apply_to_host_groups
end
