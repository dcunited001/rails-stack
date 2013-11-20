# Supported options: :resque, :sidekiq, :delayed_job, :queue_classic, :torquebox
Devise::Async.setup do |config|
  config.backend = :resque
  config.enabled = true
  config.queue = :devise_mailer
end
