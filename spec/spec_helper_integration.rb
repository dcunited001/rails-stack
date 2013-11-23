require 'spec_helper'
require 'capybara/rails'
require 'capybara/poltergeist'

Capybara.configure do |c|
  c.default_driver = :poltergeist
  c.javascript_driver = :poltergeist
  c.app_host = "http://127.0.0.1:8000"
  c.run_server = false
end

module ActionDispatch
  class IntegrationTest
    
    include Capybara::DSL
    
    before { set_page_size_to_13inch_macbook_air }
    after  { capybara_reset_sessions! }
    
    protected

    def capybara_reset_sessions!
      Capybara.reset_sessions!
    end

    def set_page_size_to_13inch_macbook_air
      page.driver.resize 1440, 900
    end

    def save_and_open_page
      dir = "#{Rails.root}/tmp/cache/capybara"
      file = "#{dir}/#{Time.now.strftime('%Y-%m-%d-%H-%M-%S')}.png"
      FileUtils.mkdir_p dir
      page.driver.render file
      while !File.exists?(file)
      end
      system "open #{file}"
    end
    alias_method :page!, :save_and_open_page

    def execjs(string)
      page.evaluate_script(string)
    end
    
  end
  
end

# Support transaction fixtures. Single connection.
# class ActiveRecord::Base
#   def self.connection
#     @@shared_connection ||= retrieve_connection
#   end
# end