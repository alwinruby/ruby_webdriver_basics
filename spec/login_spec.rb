# filename: login_spec.rb

require 'selenium-webdriver'
require 'login'

describe 'Login' do
  before(:each) do
    geckodriver = File.join(Dir.pwd, 'vendor', 'geckodriver')
    @driver = Selenium::WebDriver.for :firefox, driver_path: geckodriver
    @login = Login.new(@driver)
  end

  after(:each) do
    @driver.quit
  end

  it 'succeeded' do
    @login.with('tomsmith', 'SuperSecretPassword!')
    sleep(1)
    expect(@login.success_message_present?).to eql true
  end
end
