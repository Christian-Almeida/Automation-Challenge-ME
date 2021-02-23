# frozen_string_literal: true

###Arquivo responsavel por configurar o ambiente
##Algumas tecnologias utilizadas:
require 'capybara'              
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'report_builder'

case ENV["BROWSER"]
when "firefox"
  @driver = :selenium
when "chrome"
  @driver = :selenium_chrome
when "headless"
  Capybara.register_driver :selenium_chrome_headless do |app|
    chrome_options = Selenium::WebDriver::Chrome::Options.new.tap do |options|
      options.add_argument "--headless"
      options.add_argument "--disable-gpu"
      options.add_argument "--no-sandbox"
      options.add_argument "--disable-site-isolation-trials"
    end
    Capybara::Selenium::Driver.new(app, browser: :chrome, options: chrome_options)
  end
  @driver = :selenium_chrome_headless
else
  puts "Invalid browser"
end

Capybara.configure do |c|
  c.default_max_wait_time = 10             #deixando o capybara aguardar no minimo 5s para aparecer um elemento 
  c.default_driver = @driver             #deixando o capybara aguardar no minimo 5s para aparecer um elemento 
  c.app_host ='http://automationpractice.com/index.php?controller=authentication&back=my-account#account-creation'
end

# Capybara.configure do |config|
#   config.default_max_wait_time = 10             #deixando o capybara aguardar no minimo 5s para aparecer um elemento 
#   config.app_host ='http://automationpractice.com/index.php?controller=authentication&back=my-account#account-creation'
#   Capybara.ignore_hidden_elements = false
#   Capybara.page.driver.browser.manage.window.maximize  # Maximizando a tela
# end