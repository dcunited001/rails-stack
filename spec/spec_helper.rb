ENV["RAILS_ENV"] = "test"
require File.expand_path('../../config/environment', __FILE__)
require 'minitest/pride'

module MiniTestSpecRails
  class TestCase < MiniTest::Spec

  end
end

require 'rails/test_help'  
class ActiveSupport::TestCase

end
