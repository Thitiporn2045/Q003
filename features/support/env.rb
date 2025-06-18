require 'cucumber/rails'
require 'capybara/cucumber'
require 'selenium-webdriver'

Capybara.javascript_driver = :selenium_chrome_headless

Capybara.register_driver :selenium_chrome_headless do |app|
  options = Selenium::WebDriver::Chrome::Options.new
  options.args << 'headless'
  options.args << 'disable-gpu'
  options.args << 'no-sandbox'

  Capybara::Selenium::Driver.new(app, browser: :chrome, options: options)
end

ActionController::Base.allow_rescue = false

begin
  DatabaseCleaner.strategy = :transaction
rescue NameError
  raise "You need to add database_cleaner to your Gemfile (in the :test group) if you wish to use it."
end

Cucumber::Rails::Database.javascript_strategy = :truncation
