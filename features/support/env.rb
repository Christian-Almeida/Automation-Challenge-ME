# frozen_string_literal: true

###Arquivo responsavel por configurar o ambiente
##Algumas tecnologias utilizadas:
require 'capybara'              
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'report_builder'


Capybara.configure do |config|
  
    config.default_driver = :selenium
    config.default_max_wait_time = 10             #deixando o capybara aguardar no minimo 5s para aparecer um elemento 
    config.app_host ='http://automationpractice.com/index.php?controller=authentication&back=my-account#account-creation'
    Capybara.ignore_hidden_elements = false
    Capybara.page.driver.browser.manage.window.maximize    # Maximizando a tela
end