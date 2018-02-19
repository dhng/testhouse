namespace :seletest do
  desc "selenium_test"
  task :selenium_test => :environment do
    require "selenium-webdriver"
    driver = Selenium::WebDriver.for :chrome
    driver.navigate.to "http://google.com"

    element = driver.find_element(name: 'q')
    element.send_keys "Hello WebDriver!"
    element.submit

    puts driver.title
    driver.quit
  end

  desc "selenium_test"
  task :selenium_test_from_json, :filename => :environment do |t, args|
    require "selenium-webdriver"
    driver = Selenium::WebDriver.for :chrome
    driver.navigate.to "http://google.com"

    

    # element = driver.find_element(name: 'q')
    # element.send_keys "Hello WebDriver!"
    # element.submit

    puts driver.title
    driver.quit
  end
end
