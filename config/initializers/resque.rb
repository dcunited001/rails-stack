# Redis
redis_url = case Rails.env
  when 'production' then ENV["REDISCLOUD_URL"]
  when 'staging' then ENV["REDISTOGO_URL"]
  when 'development' then 'redis://localhost:6379'
  when 'test' then 'redis://localhost:6379'
end

redis_uri = URI.parse(redis_url)
Resque.redis = Redis.new(:host => redis_uri.host, 
                         :port => redis_uri.port, 
                         :password => redis_uri.password, 
                         :thread_safe => true)

# Resque Mailer
Resque::Mailer.excluded_environments = [:test]

# Devise Async
Devise::Async.setup do |config|
  config.backend = :resque
  config.enabled = true
  config.queue = :devise_mailer
end
