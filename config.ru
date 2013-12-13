# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment',  __FILE__)
run Rails.application

cors_origins = ENV['NG_RAILS_STACK_CORS'] || '*'

require 'rack/cors'
use Rack::Cors do
  # allow all origins in development
  allow do
    origins cors_origins
    resource '*', 
        :headers => :any, 
        :methods => [:get, :post, :delete, :put, :options]
  end
end
