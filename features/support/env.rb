require 'capybara'
require 'capybara/cucumber'
require 'httparty'
require 'pry'
require 'rspec'
require 'faker'
require 'selenium-webdriver'



Capybara.default_driver = :selenium
Capybara.default_max_wait_time = 15
# Capybara.ignore_hidden_elements = false
Capybara.register_driver :selenium do |app|
    Capybara::Selenium::Driver.new(app, browser: :chrome)
end
