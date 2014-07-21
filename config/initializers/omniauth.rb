OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  if Rails.env.development?
    provider :facebook, 'TEST_APP_ID', 'TEST_SECRET' #App ID and secret
  elsif Rails.env.test?
    provider :facebook, 'TEST_APP_ID', 'TEST_SECRET' #App ID and secret
  elsif Rails.env.production?
    provider :facebook, ENV['FB_APP_ID'], ENV['FB_SECRET']
  end
end