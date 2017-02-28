# filename: config_cloud.rb

require 'sauce_whisk'

ENV['base_url'] ||= 'http://the-internet.herokuapp.com'
ENV['host'] = 'saucelabs'

ENV['operating_system'] ||= 'Windows XP'
ENV['browser'] ||= 'internet_explorer'
ENV['browser_version'] ||= '8'

ENV['SAUCE_USERNAME'] = 'alwinsol'
ENV['SAUCE_ACCESS_KEY'] = '61f70c57-0eff-4867-b5ca-48016371ec45'
