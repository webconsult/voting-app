# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

config.action_dispatch.default_headers = {
  'X-Frame-Options' => 'SAMEORIGIN'
}