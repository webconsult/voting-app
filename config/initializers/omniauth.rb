OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  if Rails.env.development?
    provider :facebook, '591697707604195', '0f3139d59e759aa84e62392d87b8a2ee' #App ID and secret - Nordics test
    # provider :facebook, '588832501224049', '7fa6f8cfa10ad824694b09478b168b8b' #App ID and secret - Nordics
    # provider :facebook, ENV['588832501224049'], ENV['7fa6f8cfa10ad824694b09478b168b8b']
    #          :scope => 'email,user_birthday,read_stream', :display => 'popup'
  elsif Rails.env.test?
    provider :facebook, '591697707604195', '0f3139d59e759aa84e62392d87b8a2ee' #App ID and secret - Nordics test
  elsif Rails.env.production?
    provider :facebook, ENV['FB_APP_ID'], ENV['FB_SECRET']
  end
end