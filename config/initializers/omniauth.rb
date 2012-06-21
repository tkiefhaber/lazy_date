Rails.application.config.middleware.use OmniAuth::Builder do
  provider :netflix, 'CONSUMER_KEY', 'CONSUMER_SECRET'
end