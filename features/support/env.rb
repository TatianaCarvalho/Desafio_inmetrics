require 'capybara'
require 'capybara/cucumber'
require 'httparty'
require 'pry'
require 'rspec'
require 'faker'
require 'selenium-webdriver'

@browser = ENV['BROWSER']

if @browser.eql?('remote_headless')
    Capybara.run_server = false
    Capybara.javascript_driver = :selenium

    caps = Selenium::WebDriver::Remote::Capabilities.chrome(
        'chromeOptions' => {
        'args' => ['--no-default-browser-check']
        }
    )

    Capybara.register_driver :selenium do |app|
        Capybara::Selenium::Driver.new(
            app,
            browser: :remote,
            url: 'http://selenium_server:4444/wd/hub',
            desired_capabilities: caps
        )
    end
end

Capybara.configure do |config|

    if @browser.eql?('headless')
     config.default_driver = :selenium
    else @browser.eql?('chrome')
     config.default_driver = :selenium_chrome
    end

config.default_max_wait_time = 15

end