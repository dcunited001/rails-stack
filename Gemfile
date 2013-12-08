source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 4.0.0'
gem 'doorkeeper', '~> 0.7.0'
gem 'devise', '~> 3.2.0'
gem 'pg', '~> 0.17.0'

gem 'resque', "~> 2.0.0.pre.1", github: "resque/resque"
gem 'resque_mailer', '~> 2.2.6'
gem 'devise-async', '~>  0.9.0'

group :development, :test do
  gem 'pry', '~> 0.9'  
end

group :test do
  gem 'minitest', '~> 4.7.5'
  gem 'minitest-focus'
  gem 'minitest-spec-rails'
  gem 'minitest-metadata', '~> 0.4.0'
  gem 'poltergeist', '~> 1.4.1'
  gem 'database_cleaner', '~> 1.2.0'

  # it'd be cool if i could use my websocket minitest reporter!
  # gem 'minitest-reporters', '~> 1.0.0.beta3'
end

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

group :production do
  gem 'rails_12factor'
end

ruby "2.0.0"
