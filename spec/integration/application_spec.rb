require 'spec_helper_integration'

class ApplicationTest < ActionDispatch::IntegrationTest
  describe "/" do 
    it 'has a signup modal' do
      visit '/'
      save_and_open_page
    end
  end
end
